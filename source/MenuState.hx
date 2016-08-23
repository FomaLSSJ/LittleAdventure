package;

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
import flash.net.LocalConnection;

class MenuState extends FlxState
{
	public var request:Request;
	
	public var statusMessage:FlxText;
	public var labelName:FlxTextField;
	public var inputName:FlxInputText;
	public var labelPass:FlxTextField;
	public var inputPass:FlxInputText;
	public var requestButton:FlxButton;
	
	override public function create():Void
	{
		super.create();
		
		FlxG.log.redirectTraces = true;

		var myhost:LocalConnection = new LocalConnection();
		var domain:String = myhost.domain;

		trace(domain);

		if (domain.indexOf("localhost") > -1 || domain.indexOf("foxhound") > -1)
		{
			Reg.debugger = true;
		}

		Reg.server = "https://nodejs-api-fomalssj.c9users.io";
		
		request = new Request();
		
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
		
		if (request.timerStart != null)
		{
			if (request.timerElapsed <= 0)
			{
				statusMessage.text += ".";
				request.timerElapsed = 1;
			}
			
			request.timerElapsed = request.timerElapsed - request.timerStart.elapsedTime;
		}
	}
	
	private function onPlay():Void
	{
		FlxG.switchState(new PlayState());
	}
	
	private function onRequest()
	{
		if (Reg.debugger)
		{
			onPlay();
		}
		request.login(inputName.text, inputPass.text, statusMessage);
	}
}