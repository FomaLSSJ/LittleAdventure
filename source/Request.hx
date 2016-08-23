package;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxTimer;
import haxe.Http;
import haxe.Json;

class Request
{
	public var req:Http;
	public var object:Dynamic;
	public var timerStart:FlxTimer;
	public var timerElapsed:Float;
	
	public function new():Void
	{
		//null
	}
	
	public function login(login:String, password:String, message:FlxText):Void
	{
		message.text = "Request data..." + "\n";

		req = new Http(Reg.server + "/users/login");
		req.setHeader("content-type", "application/x-www-form-urlencoded");
		req.addParameter("username", login);
		req.addParameter("password", password);
		req.request(true);

		req.onData = function (data)
		{
			object = Json.parse(data);
			trace(object.status);
			message.text += "Status: " + object.status + "\n" + "Message: " + object.message + "\n";
			
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
			message.text += data + "\n";
			trace(data);
		}
		
		req.onStatus = function (data)
		{
			message.text += "Status Code: " + data + "\n";
			trace(data);
		}
	}

	public function test():Void
	{
		req = new Http(Reg.server + "/users/test");
		req.request(false);
		
		req.onData = function (data)
		{
			object = Json.parse(data);
			trace(object.text);
		}
	}
}