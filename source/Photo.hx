package ;

import flixel.FlxSprite;

class Photo extends FlxSprite
{
	public var name:String;
	public var image:String;
	public var embed:String;
	public var imgW:Int;
	public var imgH:Int;

	public function new(name:String, image:String, embed:String, imgW:Int, imgH:Int, X:Float = 0, Y:Float = 0)
	{
		super(X, Y);
		
		this.name = name;
		this.image = image;
		this.embed = embed;
		this.imgW = imgW;
		this.imgH = imgH;
		
		loadGraphic(this.image, false, 16, 16);
	}
}