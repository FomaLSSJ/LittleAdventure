package;

import haxe.Json;

#if flash
import openfl.utils.ByteArray;
import flash.net.Socket;
import flash.events.Event;
import flash.events.ProgressEvent;
#end

#if neko
import sys.net.Host;
import sys.net.Socket;
#end

class Network
{
	private static var HOST = "127.0.0.1";
	private static var PORT = 3000;

	private var socket:Socket = null;

	public function new():Void
	{
		#if flash
		socket = new Socket(HOST, PORT);
		
		socket.addEventListener(Event.CONNECT, socketConnectHandler, false, 0, true);
		socket.addEventListener(ProgressEvent.SOCKET_DATA, socketDataHandler, false, 0, true);
		#end
		
		#if neko
		socket = new Socket();
		socket.connect(new Host(HOST), PORT);
		
		while (true)
		{
			var line = socket.input.readLine();
			trace(line);
		}
		
		#end
	}
	
	#if flash
	public function write(data:Dynamic):Void
	{
		var serialize:String = Json.stringify(data);
		
		socket.writeUTFBytes(serialize);

		trace("Socket data write: " + serialize);
	}
	
	private function socketConnectHandler(e:Event):Void
	{
		trace("Connection has been established!");
	}
	
	private function socketDataHandler(e:ProgressEvent):Void
	{
		var stream:ByteArray = new ByteArray();

		socket.writeBytes(stream, 0, 0);

		var data:String = "";

		while (socket.bytesAvailable != 0)
		{
			data += socket.readUTFBytes(1);
		}

		trace("Socket data read: " + data);
	}
	#end
}