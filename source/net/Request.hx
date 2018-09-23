package net;

import haxe.Json;
import openfl.display.Loader;
import openfl.net.URLRequest;
import openfl.events.Event;
import openfl.events.IOErrorEvent;
import openfl.events.HTTPStatusEvent;
import openfl.display.Bitmap;
import flixel.FlxSprite;

import net.HttpExt;

class Request
{
	public var req:HttpExt;
	public var object:Dynamic;
	@:isVar public var sessionTicket(default, set):String;

	private var endPoint:String = "https://594E.playfabapi.com/Client/";
	private var callback:Void->Void = null;

	public function new():Void {}
	
	public function set_sessionTicket(value:String):String
	{
		return sessionTicket = value;
	}
	
	public function makeRequest(Method:String, Params:Dynamic, Callback:Dynamic->Dynamic->Void): Void
	{
		req = new HttpExt('${endPoint}${Method}');
		trace('SessionTicket: $sessionTicket');
		req.setHeader("content-type", "application/json");
		req.setHeader("X-Authentication", sessionTicket);
		req.setPostData(Params);
		req.request(true);
		
		req.onData = function (data:String):Void
		{
			trace("Success", data);
			return Callback(null, Json.parse(data));
		}

		req.onError = function (data:String):Void
		{
			trace("Error", data);
			return Callback(Json.parse(data), null);
		}

		req.onStatus = function (code:Int):Void
		{
			trace("Status", code);
		}
	}

	public function getImage(Url:String, ?Callback:FlxSprite->Void):Void
	{
		var loader:Loader = new Loader();
		var request:URLRequest = new URLRequest(Url);
		var sprite:FlxSprite = new FlxSprite();
		var status:Int = 500;

		loader.load(request);

		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event:Event):Void
		{
			if (status == 200)
			{
				var target:Dynamic = event.target;
				var bitmap:Bitmap = target.content;
				sprite.pixels = bitmap.bitmapData;

				if (Callback != null)
					return Callback(sprite);
				return;
			}

			return;
		});

		loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, function (event:IOErrorEvent):Void
		{
			trace("Error", event);

			if (Callback != null)
				return Callback(null);
			return;
		});

		loader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS, function (event:HTTPStatusEvent):Void
		{
			status = event.status;
		});
	}
}
