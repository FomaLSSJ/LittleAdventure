package net;

import haxe.Http;
import openfl.net.URLLoader;
import openfl.net.URLVariables;
import openfl.net.URLRequest;
import openfl.net.URLRequestHeader;
import openfl.events.HTTPStatusEvent;
import openfl.events.IOErrorEvent;
import openfl.events.SecurityErrorEvent;

class HttpExt extends Http
{
    public function new(url:String):Void
    {
        super(url);
    }

    #if flash
    override public function request(?post:Bool):Void
    {
		var self = this;
		var loader = req = new URLLoader();

        self.responseData = null;

		loader.addEventListener("complete", function(event):Void
        {
			self.req = null;
			self.responseData = loader.data;
			self.onData(loader.data);
		});

		loader.addEventListener("httpStatus", function(event:HTTPStatusEvent):Void
        {
			if (event.status != 0)
            {
                self.onStatus(event.status);
            }
		});

		loader.addEventListener("ioError", function(event:IOErrorEvent):Void
        {
			self.req = null;
			self.responseData = loader.data;
			self.onError(loader.data);
		});

		loader.addEventListener("securityError", function (event:SecurityErrorEvent):Void
        {
			self.req = null;
			self.onError(event.text);
		});

		var param = false;
		var vars:URLVariables = new URLVariables();

		for (p in params)
        {
			param = true;
			Reflect.setField(vars, p.param, p.value);
		}

		var small_url = url;

		if (param && !post)
        {
			var k = url.split("?");

			if (k.length > 1)
            {
				small_url = k.shift();
				vars.decode(k.join("?"));
			}
		}

		var bug = small_url.split("xxx");
		var request:URLRequest = new URLRequest(small_url);

		for (h in headers)
        {
            request.requestHeaders.push(new URLRequestHeader(h.header, h.value));
        }

		if (postData != null)
        {
			request.data = postData;
			request.method = "POST";
		}
        else
        {
			request.data = vars;
			request.method = (post) ? "POST" : "GET";
		}

		try
        {
			loader.load(request);
		}
        catch (err:Dynamic)
        {
			self.req = null;
			onError("Exception: " + Std.string(err));
		}
	}
    #end
}