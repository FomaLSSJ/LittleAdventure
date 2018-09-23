package net;

import haxe.Json;
import haxe.Timer;

#if flash
import openfl.utils.ByteArray;
import openfl.net.Socket;
import openfl.events.Event;
import openfl.events.IOErrorEvent;
import openfl.events.SecurityErrorEvent;
import openfl.events.ProgressEvent;
import openfl.system.Security;
#end

#if (neko || windows)
import sys.net.Host;
import sys.net.Socket;
#end

class Network
{
	private var socket: Socket;
	private var timer: Timer;

	public function new():Void
	{
		#if flash
		Security.allowDomain("*");
		#end

		connection();
	}
	
	#if (neko || windows)
	public function connection():Void
	{
		socket = new Socket();
		socket.connect(new Host(Reg.host), Reg.port);
		
		while (true)
		{
			var line = socket.input.readLine();
			trace(line);
		}
	}

	public function write(data:Dynamic):Void
	{
		trace(data);
	}

	public function isConnected():Bool
	{
		return (socket != null);
	}
	#end

	#if flash
	public function connection():Void
	{
		socket = new Socket();
		
		socket.addEventListener(Event.CONNECT, socketConnectHandler);
		socket.addEventListener(Event.CLOSE, socketClose);
		socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR, socketSecurityError);
		socket.addEventListener(ProgressEvent.SOCKET_DATA, socketDataHandler);
		socket.addEventListener(IOErrorEvent.IO_ERROR, socketError);
		
		socket.connect(Reg.host, Reg.port);
		
		timer = new Timer(3000);
		timer.run = function ():Void
		{
			if (socket == null)
			{
				trace("Socket destroy");
				timer.stop();
				timer = null;
				return;
			}
			
			trace("sending info");
			socket.writeUTFBytes("info");
			socket.flush();
		}
	}
	
	public function isConnected():Bool
	{
		if (socket == null)
		{
			return false;
		}
		
		return socket.connected;
	}
	
	public function write(data:Dynamic):Void
	{
		if (socket == null)
		{
			trace("Socket destroy");
			return;
		}
		
		if (Type.getClassName(Type.getClass(data)) == null)
		{
			data = Json.stringify(data);
		}
		
		socket.writeUTFBytes(data);
		socket.flush();

		trace("Socket data write: " + data);
	}
	
	private function socketConnectHandler(e:Event):Void
	{
		trace("Connection has been established!");
	}
	
	private function socketDataHandler(e:ProgressEvent):Void
	{
		var stream:ByteArray = new ByteArray();
		var data:String = "";

		socket.writeBytes(stream, 0, 0);

		while (socket.bytesAvailable != 0)
		{
			data += socket.readUTFBytes(1);
		}

		var object:Dynamic = Json.parse(data);
		
		Reg.inv.addItem(object.item);

		trace("Socket data read: " + data);
	}
	
	private function socketClose(e:Event):Void
	{
		trace("Socket close");
		socket.close();
		socket = null;
	}
	
	private function socketError(e:IOErrorEvent):Void
	{
		trace("Socket error");
		socket = null;
	}
	
	private function socketSecurityError(e:SecurityErrorEvent):Void
	{
		trace("Socket security error");
	}
	#end
}