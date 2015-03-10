package ;

import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import openfl.events.Event;

import com.newgrounds.components.FlashAd;

class MenuState extends FlxState
{	
	private var flashAd:FlashAd = new FlashAd();
	
	private var sky:FlxBackdrop = null;
	private var earth:FlxBackdrop = null;
	
	override public function create():Void
	{
		super.create();
		
		FlxG.sound.playMusic("assets/music/europe_the_final_countdown_8-bit.mp3", 1, true);
		
		flashAd.x = FlxG.width / 2;
		flashAd.y = FlxG.height / 2 - 32;
		FlxG.stage.addChild(flashAd);
		
		add(sky = new FlxBackdrop("assets/images/sky.png", 1, 1, true, false));
		sky.velocity.set(-50, 0);
		
		add(earth = new FlxBackdrop("assets/images/earth.png", 1, 1, true, false));
		earth.y = FlxG.height - 74;
		earth.velocity.set(-100, 0);
		
		var titleGame:FlxText = new FlxText(0, 1, 0, "Little Adventure", 32);
		titleGame.x = (FlxG.width - titleGame.width) / 2;
		add(titleGame);
		
		var continueButton:FlxButton = new FlxButton(0, FlxG.height - 32, "Continue", onClickContinue);
		continueButton.x = (FlxG.width - continueButton.width) / 2;
		add(continueButton);
		
		var playButton:FlxButton = new FlxButton(0, FlxG.height - 32, "New Game", onClickPlay);
		playButton.x = continueButton.x - (playButton.width + 16);
		add(playButton);
		
		var optionsButton:FlxButton = new FlxButton(0, FlxG.height - 32, "Options", onClickOptions);
		optionsButton.x = continueButton.x + continueButton.width + 16;
		add(optionsButton);
	}

	private function onClickPlay():Void
	{
		FlxG.sound.music.stop();
		FlxG.switchState(new PlayState());
	}
	
	private function onClickContinue():Void
	{
		/* null */
	}
	
	private function onClickOptions():Void
	{
		/* null */
	}
	
	override public function destroy():Void
	{
		FlxG.stage.removeChild(flashAd);
		
		super.destroy();
	}

	override public function update():Void
	{
		super.update();
	}
}