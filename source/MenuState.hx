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
import haxe.Http;
import haxe.Json;

class MenuState extends FlxState
{
	public var statusMessage:FlxText;
	public var labelName:FlxTextField;
	public var inputName:FlxInputText;
	public var labelPass:FlxTextField;
	public var inputPass:FlxInputText;
	public var requestButton:FlxButton;
	public var timerStart:FlxTimer;
	public var timerElapsed:Float;
	
	override public function create():Void
	{
		super.create();
		
		Reg.server = "https://nodejs-api-fomalssj.c9users.io/";
		
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
		
		requestButton = new FlxButton(0, 0, "Login", onPlay /*onRequest*/);
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
		
		if (timerStart != null)
		{
			if (timerElapsed <= 0)
			{
				statusMessage.text += ".";
				timerElapsed = 1;
			}
			
			timerElapsed = timerElapsed - timerStart.elapsedTime;
		}
	}
	
	private function onPlay():Void
	{
		FlxG.switchState(new PlayState());
	}
	
	private function onRequest():Void
	{
		statusMessage.text = "Request data..." + "\n";
		
		var req:Http = new Http(Reg.server + "users/login");
		req.addParameter("username", inputName.text);
		req.addParameter("password", inputPass.text);
		req.request(true);
		
		req.onData = function (data)
		{
			var object:Dynamic = Json.parse(data);
			statusMessage.text += "Status: " + object.status + "\n" + "Message: " + object.message + "\n";
			
			if (object.status)
			{
				Reg.name = object.name;
				
				if (object.image)
				{
					Reg.image = "images/users/" + object.image;
				}
				
				timerElapsed = 0;
				timerStart = new FlxTimer().start(3.0, function (t:FlxTimer)
				{
					FlxG.switchState(new PlayState());
				}, 0);
			}
		}
		
		req.onError = function (data)
		{
			statusMessage.text += data + "\n";
			trace(data);
		}
		
		req.onStatus = function (data)
		{
			statusMessage.text += "Status Code: " + data + "\n";
			trace(data);
		}
	}
}