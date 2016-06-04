package;

import flixel.FlxSprite;
import openfl.display.BitmapData;
import openfl.display.Loader;
import openfl.events.Event;
import openfl.net.URLRequest;

class ImageLoad extends FlxSprite
{
	private var loader:Loader;
	
	public var bitmapData:BitmapData;
	
	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:Dynamic, ?callback:Void->Void) 
	{
		super(X, Y);
		
		loader = new Loader();
		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (e:Event)
		{
			bitmapData = e.target.content.bitmapData;
			loadGraphic(bitmapData);
			
			callback();
		});
		loader.load(new URLRequest(SimpleGraphic));
	}
}