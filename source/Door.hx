package;

import flixel.FlxSprite;

class Door extends FlxSprite
{
	public var id:String;
	public var map:String;
	public var posX:Int;
	public var posY:Int;
	
	public function new(X:Float=0, Y:Float=0, map:String, posX:Int, posY:Int) :Void
	{
		super(X, Y);
		
		this.map = map;
		this.posX = posX;
		this.posY = posY;
		
		makeGraphic(16,16, 0x0);
	}
	
	override public function update():Void
	{
		this.visible = this.active;
	}
}