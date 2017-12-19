package;

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
	public var labelName:FlxTextField;
	public var inputName:FlxInputText;
	public var labelPass:FlxTextField;
	public var inputPass:FlxInputText;
	public var requestButton:FlxButton;

	#if flash
	private var flashAd:FlashAd = new FlashAd();
	#end

	override public function create():Void
	{
		super.create();

		//FlxG.log.redirectTraces = true;

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

		labelName = new FlxTextField(0, 0, 64, "Username");
		labelName.x = (FlxG.width - labelName.width) / 10;
		labelName.y = FlxG.height - 64;
		inputName = new FlxInputText(0, 0, 128);
		inputName.x = labelName.x + labelName.width + 24;
		inputName.y = FlxG.height - 64;

		labelPass = new FlxTextField(0, 0, 64, "Password");
		labelPass.x = inputName.x + inputName.width + 64;
		labelPass.y = FlxG.height - 64;
		inputPass = new FlxInputText(10, 140, 128);
		inputPass.x = labelPass.x + labelPass.width + 24;
		inputPass.y = FlxG.height - 64;
		inputPass.passwordMode = true;

		requestButton = new FlxButton(0, 0, "Login", onRequest);
		requestButton.x = (FlxG.width - requestButton.width) / 2;
		requestButton.y = FlxG.height - 32;

		add(labelName);
		add(inputName);
		add(labelPass);
		add(inputPass);
		add(statusMessage);
		add(requestButton);
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
		FlxG.stage.removeChild(flashAd);
		#end
		FlxG.switchState(new PlayState());
	}

	private function onRequest():Void
	{
		if (Reg.debugger == true)
		{
			onPlay();
			return;
		}
		
		Reg.request.login(inputName.text, inputPass.text, statusMessage, function () {
			#if flash	
			FlxG.stage.removeChild(flashAd);
			#end
		});
	}
}
