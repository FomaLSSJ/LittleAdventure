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
	@:isVar public var sessionTicket(default, set):String;

	private var endPoint:String = "https://594E.playfabapi.com/Client/";
	private var callback:Void->Void = null;

	public function new():Void {}
	
	public function set_sessionTicket(value:String):String
	{
		return sessionTicket = value;
	}
	
	public function makeRequest(Method:String, Params:Dynamic, Callback:Dynamic->Void): Void
	{
		req = new Http('${endPoint}${Method}');
		trace('SessionTicket: $sessionTicket');
		req.setHeader("content-type", "application/json");
		req.setHeader("X-Authentication", sessionTicket);
		req.setPostData(Params);
		req.request(true);
		
		req.onData = function (data)
		{
			trace(data);
			return Callback(Json.parse(data));
		}

		req.onError = function (data)
		{
			trace("Error", data);
		}

		req.onStatus = function (data)
		{
			trace("Status", data);
		}
	}
}
