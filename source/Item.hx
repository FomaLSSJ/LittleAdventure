package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

class Item extends FlxSprite
{
	public var name:String;
	public var multiple:Bool;
	public var count:Int;
	
	public function new(Name:String, ?Multiple = false, ?Count = 1, ?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset):Void
	{
		super(0, 0, SimpleGraphic);
		
		name = Name;
		count = Count;
		multiple = Multiple;
	}
}