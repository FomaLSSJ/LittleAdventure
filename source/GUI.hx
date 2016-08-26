package;

import flixel.FlxG;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxSprite;

class GUI extends FlxGroup
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

		status = new FlxText(10, 10, 128, Reg.name);
		status.scrollFactor.set(0, 0);
		status.visible = false;
		add(status);

		blank = new FlxSprite();
		blank.makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		blank.scrollFactor.set(0, 0);
		blank.visible = false;
		add(blank);

		dialog.visible = false;
		add(dialog);
	}

	public function toggleDialog():Void
	{
		dialog.visible = !dialog.visible;
	}

	public function setText(text:String):Void
	{
		dialogText.text = text;
	}
}
