package;

import FlxSpriteExt;
import flash.display.BlendMode;
import flixel.FlxSprite;
import flixel.FlxBasic;
import flixel.FlxG;
import flixel.util.FlxColorUtil.*;

class TimeSystem extends FlxSpriteExt
{
	private var time:Float = 0;
	private var maxAlpha:Float = 0.98;
	
	private var colorArray:Array<Int> = [0xFF9C28, 0x75C7DD, 0x826287, 0x000000]; //0x0C0318];
	
	public function new():Void
	{
		super(0, 0);
		makeGraphic(FlxG.width, FlxG.height, 0xff000000);
		scrollFactor.set(0, 0);
		blend = BlendMode.MULTIPLY;
		alpha = 0;
		
		time = 19 * 60;
	}
	
	override public function update():Void
	{
		super.update();
		
		if (Math.floor(time) == 1440)
			time = 0;
		
		if (Math.floor(time) > 480 && Math.floor(time) < 1200 && alpha > 0)
		{
			alpha = alpha - (FlxG.elapsed / 200);
		}
		if (Math.floor(time) > 1200 && alpha < maxAlpha)
		{
			alpha = alpha + (FlxG.elapsed / 100);
		}
		
		time += FlxG.elapsed;
	}
	
	override public function draw():Void
	{
		super.draw();
		
		fill(0xff000000);
	}
	
	public function timeConvert():String
	{
		return ("0" + Math.floor(time / 60)).substr( -2) + ":" + ("0" + Math.floor(time % 60)).substr( -2);
	}
}