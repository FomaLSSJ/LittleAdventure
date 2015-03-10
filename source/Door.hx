package ;

import flixel.FlxSprite;

class Door extends FlxSprite
{
	public var enable(default, set):Bool = true;
	public var idMap(default, set):String = "null";
	
	public var mapData:String;
	public var posX:Int;
	public var posY:Int;

	public function new(mapLink:String, posX:Int, posY:Int, X:Float = 0, Y:Float = 0)
	{
		super(X, Y);
		
		this.mapData = mapLink;
		this.posX = posX;
		this.posY = posY;
		
		makeGraphic(16, 16, 0x0);
		//loadGraphic(null, false, 16, 16);
	}
	
	public function set_idMap(val:String):String
	{
		return idMap = val;
	}
	
	public function set_enable(val:Bool):Bool
	{
		return enable = val;
	}
	
	override public function update():Void
	{
		this.visible = this.enable;
	}
}