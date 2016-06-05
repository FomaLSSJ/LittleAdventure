package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	private var posX:Int = 10 * 16;
	private var posY:Int = 8 * 16;
	
	private var blank:FlxSprite;
	private var image:ImageLoad;
	private var player:Player;
	private var status:FlxText;
	private var username:String;
	
	private var backMap:FlxGroup = new FlxGroup();
	private var frontMap:FlxGroup = new FlxGroup();
	private var objectGroup:FlxGroup = new FlxGroup();
	private var guiGroup:FlxGroup = new FlxGroup();
	
	private var doorsGroup:FlxGroup = new FlxGroup();
	
	override public function create():Void
	{
		super.create();
		
		Reg.levels.set("global", AssetPaths.global__tmx);
		Reg.levels.set("home1f", AssetPaths.home1f__tmx);
		
		loadMap("global");
		
		trace(Reg.curent);
		
		player = new Player(posX, posY, AssetPaths.char__png);
		objectGroup.add(player);
		
		/*
		image = new ImageLoad(0, 0, Reg.server + Reg.image, function ()
		{
			player = new Player(posX, posY, image.bitmapData);
			objectGroup.add(player);
		});
		*/
		
		status = new FlxText(10, 10, 128, Reg.name);
		status.scrollFactor.set(0, 0);
		guiGroup.add(status);
		
		blank = new FlxSprite();
		blank.makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		blank.scrollFactor.set(0, 0);
		guiGroup.add(blank);
		
		add(backMap);
		add(objectGroup);
		add(frontMap);
		add(guiGroup);
	}
	
	private function loadMap(map:String, ?playerX:Int = 0, ?playerY:Int = 0):Void
	{
		Reg.curent = map;
		Reg.level = new TiledLevel(Reg.levels.get(map));
		
		backMap.clear();
		frontMap.clear();
		
		backMap.add(Reg.level.blockedtiles);
		backMap.add(Reg.level.background);
		frontMap.add(Reg.level.foreground);
		
		if (playerX != 0 && playerY != 0)
		{
			if (player != null)
			{
				player.x = playerX * 16;
				player.y = playerY * 16;
			}
			else
			{
				posX = playerX * 16;
				posY = playerY * 16;
			}
		}
	}
	
	override public function destroy():Void
	{
		super.destroy();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (blank.visible && player != null)
		{
			blank.visible = false;
		}
		
		if (Reg.level.collide(player))
		{
			player.moveToNextTile = false;
		}
		
		/*
		Reg.level.doorTouch(player);
		*/
		
		if (FlxG.keys.anyPressed(["F8"]))
		{
			//FlxG.switchState(new MenuState());
			if (Reg.curent == "global")
			{
				loadMap("home1f", 8, 8);
			}
			else
			{
				loadMap("global", 10, 8);
			}
		}
	}
}