package layout;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxTween.FlxTweenType;
import flixel.util.FlxColor;

class Loader extends FlxGroup
{
    private var background:FlxSprite;
    private var spinner:FlxSprite;

    override public function new():Void
    {
        super();

        init();
    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);

    }

    override public function destroy():Void
    {
        super.destroy();

        if (background != null)
            background.destroy();
        
        if (spinner != null)
            spinner.destroy();
    }

    private function init():Void
    {
		var background:FlxSprite = new FlxSprite(0, 0);
		background.makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		background.alpha = .5;

		var spinner:FlxSprite = new FlxSprite(0, 0);
		spinner.loadGraphic(AssetPaths.spinner__png);
		spinner.setPosition(FlxG.width / 2 - spinner.width / 2, FlxG.height / 2 - spinner.height / 2);
		FlxTween.angle(spinner, 0, 90, 1, { type: FlxTweenType.LOOPING });

        add(background);
		add(spinner);
    }
}