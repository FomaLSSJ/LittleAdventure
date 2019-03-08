package storage;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxTween.FlxTweenType;
import flixel.util.FlxColor;
import flixel.text.FlxText;

class Phone extends FlxGroup
{
    private var background:FlxSprite;
    private var debugData:FlxSprite;
    private var debugText:FlxText;

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

        debugData = new FlxSprite(15, 65);
        debugData.makeGraphic(198, 349, FlxColor.GRAY);
        debugData.setPosition(15, 65);
        //add(debugData);

        debugText = new FlxText(0, 0, 350, "");
        debugText.setFormat(8, FlxColor.BLACK);
        debugText.text = "Message";
        add(debugText);
    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);

        debugData.setPosition(background.x + 15, background.y + 65);
        debugText.setPosition(background.x + 15, background.y + 65);
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

        trace(Reg.phoneDatas);

        debugText.text = Reg.phoneDatas.key + '\n-----------------\n\n' + Reg.phoneDatas.value.join('\n');
    }
}