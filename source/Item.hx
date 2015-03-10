package ;

import flixel.FlxSprite;

class Item extends FlxSprite
{
	public var name:String;
	public var image:String;

	public function new(name:String, image:String, X:Float = 0, Y:Float = 0)
	{
		super(X, Y);
		
		this.name = name;
		this.image = image;
		
		loadGraphic(this.image, false, 16, 16);
		
		scrollFactor.x = 0;
		scrollFactor.y = 0;
	}
}