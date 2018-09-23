package states;

import haxe.Timer;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.addons.ui.FlxInputText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.group.FlxGroup;

#if flash
import com.newgrounds.components.FlashAd;
#end

import states.PlayState;

import layout.Loader;

class MenuState extends FlxState
{
	private var sessionTicket:String;
	private var statusMessage:FlxText;
	private var background:FlxSprite;

	private var mainGroup:FlxGroup;
	private var continueButton:FlxButton;
	private var logoutButton:FlxButton;

	private var authGroup:FlxGroup;
	private var loginLabel:FlxText;
	private var loginInput:FlxInputText;
	private var passwordLabel:FlxText;
	private var passwordInput:FlxInputText;
	private var loginButton:FlxButton;
	private var registerButton:FlxButton;

	private var layout:FlxSprite;

	#if flash
	private var flashAd:FlashAd;
	#end

	override public function create():Void
	{
		super.create();

		// FlxG.log.redirectTraces = true;

		FlxG.console.registerFunction("socketConnect", function ():String
		{
			Reg.network.connection();
			return "Socket start connection!";
		});

		FlxG.console.registerFunction("socketSend", function ():String
		{
			trace("Start send: ", Timer.stamp());
			Reg.network.write({ timestamp: Reg.timer.current });
			trace("End send: ", Timer.stamp());
			return "Socket send EVENT_TIMESTAMP";
		});

		FlxG.console.registerFunction("socketGet", function ():String
		{
			trace("Start send: ", Timer.stamp());
			Reg.network.write("EVENT_GET");
			trace("End send: ", Timer.stamp());
			return "Socket send EVENT_GET";
		});

		FlxG.console.registerFunction("toggleLayout", function ():String
		{
			if (layout != null)
			{
				layout.visible = layout.active = !layout.active;
				return "Layout toggle";
			}

			return "Layout is null";
		});
		
		Reg.save.bind("playfab");
		sessionTicket = Reg.save.data.ticket;
		Reg.save.close();
		trace(sessionTicket);
		Reg.client.setSessionTicket(sessionTicket);
		trace(Reg.client.getSessionTicket());

		#if debug
		trace("--> Debug enabled");
		#else
		trace("--> Debug disabled");
		#end

		#if (flash && !debug)
		flashAd = new FlashAd();
		flashAd.x = FlxG.width / 2 - flashAd.width / 2;
		flashAd.y = 32;
		FlxG.stage.addChild(flashAd);
		#end

		statusMessage = new FlxText(10, 10, FlxG.width - 20, "");

		mainGroup = new FlxGroup();
		authGroup = new FlxGroup();

		background = new FlxSprite(0, 0);
		background.makeGraphic(400, 80, FlxColor.fromRGB(51, 51, 51, 255));
		background.setPosition(FlxG.width / 2 - background.width / 2, FlxG.height - (background.height + 16));

		var onePart:Int = Math.round(FlxG.width / 3);

		continueButton = new FlxButton(0, 0, "Continue", onContinue);
		continueButton.setPosition(onePart - continueButton.width / 2, FlxG.height - 48);

		logoutButton = new FlxButton(0, 0, "Logout", onLogout);
		logoutButton.setPosition(onePart * 2 - logoutButton.width / 2, FlxG.height - 48);
		
		mainGroup.add(continueButton);
		mainGroup.add(logoutButton);

		loginLabel = new FlxText(0, 0, 64, "Username");
		loginLabel.setPosition(onePart - loginLabel.width / 2, FlxG.height - 80);
		loginLabel.color = FlxColor.WHITE;
		
		loginInput = new FlxInputText(0, 0, 128);
		loginInput.setPosition(onePart - loginInput.width / 2, FlxG.height - 64);

		passwordLabel = new FlxText(0, 0, 64, "Password");
		passwordLabel.setPosition(onePart * 2 - passwordLabel.width / 2, FlxG.height - 80);
		passwordLabel.color = FlxColor.WHITE;
		
		passwordInput = new FlxInputText(10, 140, 128);
		passwordInput.setPosition(onePart * 2 - passwordInput.width / 2, FlxG.height - 64);
		passwordInput.passwordMode = true;

		registerButton = new FlxButton(0, 0, "Register", onRegister);
		registerButton.setPosition(onePart - registerButton.width / 2, FlxG.height - 40);

		loginButton = new FlxButton(0, 0, "Login", onLogin);
		loginButton.setPosition(onePart * 2 - loginButton.width / 2, FlxG.height - 40);

		authGroup.add(loginLabel);
		authGroup.add(loginInput);
		authGroup.add(passwordLabel);
		authGroup.add(passwordInput);
		authGroup.add(registerButton);
		authGroup.add(loginButton);

		checkVisibleGroups();

		add(statusMessage);
		add(background);
		add(mainGroup);
		add(authGroup);

		var url:String = "https://hentaigamecg.com/cache/Taimanin-Yukikaze/217_Taimanin_Yukikaze_75_595.jpg";
		onGetImage(url);
		
		var loader:Loader = new layout.Loader();
		add(loader);
	}

	override public function destroy():Void
	{
		super.destroy();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}

	private function checkVisibleGroups():Void {
		mainGroup.visible = mainGroup.active = sessionTicket != null;
		authGroup.visible = authGroup.active = sessionTicket == null;
	}

	private function onPlay():Void
	{
		#if flash
		if (flashAd != null)
		{
			FlxG.stage.removeChild(flashAd);
			flashAd = null;
		}
		#end
		FlxG.switchState(new PlayState());
	}

	private function onContinue():Void
	{
		#if flash
		statusMessage.text = "-> Continue..\n";

		if (flashAd != null)
		{
			FlxG.stage.removeChild(flashAd);
			flashAd = null;
		}

		Reg.client.getCharacterData(function (res:Dynamic):Void
		{
			if (res.code != 200)
				return Reg.client.handleError(res, statusMessage);
		});
		
		Reg.client.getCharacterStatistics(function (res:Dynamic):Void
		{
			if (res.code != 200)
				return Reg.client.handleError(res, statusMessage);
		});
		
		Reg.client.getAllUsersCharacters(function (res:Dynamic):Void
		{
			if (res.code != 200)
				return Reg.client.handleError(res, statusMessage);
		});
		
		Reg.client.getCharacterStatistics(function (res:Dynamic):Void
		{
			if (res.code != 200)
				return Reg.client.handleError(res, statusMessage);

			return onPlay();
		});
		#else
		return onPlay();
		#end
	}

	private function onLogout():Void
	{
		statusMessage.text = "-> Logout..\n";

		Reg.client.clearSessionTicket();
		sessionTicket = Reg.client.getSessionTicket();
		checkVisibleGroups();
		trace(sessionTicket);
	}

	private function onRegister():Void
	{
		statusMessage.text = "-> Register..\n";
	}

	private function onLogin():Void
	{
		statusMessage.text = "-> Login..\n";

		#if flash
		if (flashAd != null)
		{
			FlxG.stage.removeChild(flashAd);
			flashAd = null;
		}

		Reg.client.LoginWithEmailAddress(loginInput.text, passwordInput.text, function (res:Dynamic):Void
		{
			if (res.code != 200)
				return Reg.client.handleError(res, statusMessage);

			Reg.client.getCharacterData(function (res:Dynamic):Void
			{
				if (res.code != 200)
					return Reg.client.handleError(res, statusMessage);
			});
			
			Reg.client.getCharacterStatistics(function (res:Dynamic):Void
			{
				if (res.code != 200)
					return Reg.client.handleError(res, statusMessage);
			});
			
			Reg.client.getAllUsersCharacters(function (res:Dynamic):Void
			{
				if (res.code != 200)
					return Reg.client.handleError(res, statusMessage);
			});
			
			Reg.client.getCharacterStatistics(function (res:Dynamic):Void
			{
				if (res.code != 200)
					return Reg.client.handleError(res, statusMessage);

				return onPlay();
			});
		});
		#end
	}

	public function onGetImage(Url:String):Void
	{
		return Reg.client.getImage(Url, function (res:FlxSprite):Void
		{
			layout = res;
			layout.visible = layout.active = false;
			add(layout);
			trace("Layout init complete");
		});
	}
}
