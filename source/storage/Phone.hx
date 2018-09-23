package storage;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxTween.FlxTweenType;

class Phone extends FlxGroup
{
    private var background:FlxSprite;

    public var isShow:Bool = false;

    override public function new():Void
    {
        super();

        init();
    }

    private function init():Void
    {
        background = new FlxSprite(0, 0);
        background.loadGraphic(AssetPaths.iphone__png);
        background.setPosition(FlxG.width, 0);
        add(background);
    }

    public function dragToggle():Void
    {
        var newX:Float = isShow ? FlxG.width : FlxG.width - (background.width + 16);
        var ease:Float->Float = isShow ? FlxEase.quadIn : FlxEase.quadOut;

        FlxTween.tween(background, { x: newX, y: 0 }, 1, {
            type: FlxTweenType.ONESHOT,
            ease: ease,
            startDelay: .3,
            loopDelay: 1,
            onComplete: function (tween:FlxTween):Void
            {
                isShow = !isShow;
            }
        });
    }
}