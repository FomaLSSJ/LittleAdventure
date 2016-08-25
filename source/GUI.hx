package;

import flixel.FlxG;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;

class GUI extends FlxSpriteGroup
{
	private var dialogBg:FlxSprite;
	private var dialogText:FlxText;
	private var blank:FlxSprite;
	private var status:FlxText;
	
	private var dialog:FlxGroup = new FlxGroup();

	public function new():Void
	{
		super();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}

	public function init():Void
	{
		dialogBg = new FlxSprite();
		dialogBg.makeGraphic(FlxG.width, 120, 0xFF333333);
		dialogBg.scrollFactor.x = dialogBg.scrollFactor.y = 0;
		dialogBg.alpha = .65;
		dialog.add(dialogBg);

		dialogText = new FlxText(10, 10, FlxG.width - 20, "__TEXT__");
		dialog.add(dialogText);
		
		dialog.visible = false;

		status = new FlxText(10, 10, 128, Reg.name);
		status.scrollFactor.set(0, 0);
		status.visible = false;
		add(status);

		blank = new FlxSprite();
		blank.makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		blank.scrollFactor.set(0, 0);
		blank.visible = false;
		add(blank);
	}

	public function toggleDialog():Void
	{
		dialogBg.visible = !dialog.visible;
	}
}
