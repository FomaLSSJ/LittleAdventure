package ;

import flixel.FlxSprite;
import flixel.FlxState;

class BsodState extends FlxState
{
	private var bsodSprite:FlxSprite;
	private var bsodImage:String = "assets/images/bsod.png";
	
	override public function create():Void
	{
		super.create();
		
		bsodSprite = new FlxSprite();
		bsodSprite.loadGraphic(bsodImage, false, 320, 240);
		add(bsodSprite);
	}
	
}