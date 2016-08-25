package;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;

class GUI extends FlxSpriteGroup
{
  private var dialog:FlxSprite;
  private var blank:FlxSprite;
  private var status:FlxText;

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
    dialog = new FlxSprite();
    dialog.makeGraphic(FlxG.width, 120, 0xFF333333);
    dialog.scrollFactor.x = dialog.scrollFactor.y = 0;
    dialog.alpha = .75;
    dialog.visible = true;
    add(dialog);

    status = new FlxText(10, 10, 128, Reg.name);
		status.scrollFactor.set(0, 0);
		add(status);

    blank = new FlxSprite();
		blank.makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		blank.scrollFactor.set(0, 0);
    blank.visible = false;
		add(blank);
  }

  public function toggleDialog():Void
  {
    dialog.visible = !dialog.visible;
  }
}
