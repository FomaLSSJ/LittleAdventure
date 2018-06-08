package;

import haxe.Json;
import haxe.Timer;
import flash.utils.ByteArray;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.addons.text.FlxTextField;
import flixel.addons.ui.FlxInputText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxTimer;
import flixel.util.FlxColor;
#if flash
import flash.net.LocalConnection;
import com.newgrounds.components.FlashAd;
#end

class MenuState extends FlxState
{
	public var statusMessage:FlxText;
	public var labelName:FlxText;
	public var inputName:FlxInputText;
	public var labelPass:FlxText;
	public var inputPass:FlxInputText;
	public var requestButton:FlxButton;
	public var logoutButton:FlxButton;

	#if flash
	private var flashAd:FlashAd = new FlashAd();
	#end

	override public function create():Void
	{
		super.create();

		//FlxG.log.redirectTraces = true;

		FlxG.console.registerFunction("socketConnect", function ():String
		{
			Reg.network.connection();
			return "Socket start connection!";
		});

		FlxG.console.registerFunction("socketSend", function ():String
		{
			trace("Start send: ", Timer.stamp());
			Reg.network.write({ string: "lol", number: 123, float: 1.3, boolean: true });
			trace("End send: ", Timer.stamp());
			return "Socket send SOCKET_INFO";
		});
		
		Reg.save.bind("playfab");
		var sessionTicket:String = Reg.save.data.ticket;
		Reg.save.close();
		trace(sessionTicket);
		Reg.client.setSessionTicket(sessionTicket);
		trace(Reg.client.getSessionTicket());

		#if flash
		flashAd.x = FlxG.width / 2 - flashAd.width / 2;
		flashAd.y = FlxG.height / 2 - flashAd.height / 2;
		FlxG.stage.addChild(flashAd);

		var myhost:LocalConnection = new LocalConnection();
		var domain:String = myhost.domain;

		trace(domain);

		if (domain.indexOf("localhost") > -1 || domain.indexOf("foxhound") > -1)
		{
			Reg.debugger = true;
		}
		#end
		
		#if (neko || windows)
		Reg.debugger = true;
		#end

		Reg.server = "http://localhost:3000";

		statusMessage = new FlxText(10, 10, FlxG.width - 20, "");

		labelName = new FlxText(0, 0, 64, "Username");
		labelName.setPosition((FlxG.width - labelName.width) / 10, FlxG.height - 64);
		labelName.color = FlxColor.WHITE;
		
		inputName = new FlxInputText(0, 0, 128);
		inputName.x = labelName.x + labelName.width + 24;
		inputName.y = FlxG.height - 64;

		labelPass = new FlxText(0, 0, 64, "Password");
		labelPass.setPosition(inputName.x + inputName.width + 64, FlxG.height - 64);
		labelPass.color = FlxColor.WHITE;
		
		inputPass = new FlxInputText(10, 140, 128);
		inputPass.x = labelPass.x + labelPass.width + 24;
		inputPass.y = FlxG.height - 64;
		inputPass.passwordMode = true;

		requestButton = new FlxButton(0, 0, "Login", onRequest);
		requestButton.setPosition((FlxG.width - requestButton.width) / 2, FlxG.height - 32);

		logoutButton = new FlxButton(0, 0, "Logout", onLogout);
		logoutButton.setPosition(requestButton.x + requestButton.width + 30, FlxG.height - 32);
		
		add(labelName);
		add(inputName);
		add(labelPass);
		add(inputPass);
		add(statusMessage);
		add(requestButton);
		add(logoutButton);
	}

	override public function destroy():Void
	{
		super.destroy();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		if (Reg.request.timerStart != null)
		{
			if (Reg.request.timerElapsed <= 0)
			{
				statusMessage.text += ".";
				Reg.request.timerElapsed = 1;
			}

			Reg.request.timerElapsed = Reg.request.timerElapsed - Reg.request.timerStart.elapsedTime;
		}
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

	private function onRequest():Void
	{
		#if flash
		if (flashAd != null)
		{
			FlxG.stage.removeChild(flashAd);
			flashAd = null;
		}
		#end
		
		#if flash
		Reg.client.loginWithCustomID(function (res:Dynamic):Void
		{
			Reg.client.getCharacterData(function (res:Dynamic):Void
			{
				trace(res);
			});
			
			Reg.client.getCharacterStatistics(function (res:Dynamic):Void
			{
				trace(res);
			});
			
			Reg.client.getAllUsersCharacters(function (res:Dynamic):Void
			{
				trace(res);
			});
			
			Reg.client.getCharacterStatistics(function (res:Dynamic):Void
			{
				trace(res);
				onPlay();
			});
		});
		#else
		onPlay();
		#end
	}
	
	private function onLogout():Void
	{
		Reg.client.clearSessionTicket();
		trace(Reg.client.getSessionTicket());
	}
}
