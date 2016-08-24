package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxColor;
import flixel.FlxBasic;
import flixel.math.FlxPoint;

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
	private var characters:FlxGroup = new FlxGroup();

	override public function create():Void
	{
		super.create();

		Reg.levels.set("global", AssetPaths.global__tmx);
		Reg.levels.set("home1f", AssetPaths.home1f__tmx);
		Reg.levels.set('market', AssetPaths.market__tmx);

		loadMap("global");

		//trace(Reg.current);

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

		var npc:Character = new Character(9 * 16, 13 * 16, AssetPaths.char__png);
		characters.add(npc);

		add(backMap);
		add(objectGroup);
		add(frontMap);
		add(guiGroup);
		add(characters);
	}

	private function loadMap(map:String, ?playerX:Int = 0, ?playerY:Int = 0):Void
	{
		Reg.current = map;
		Reg.level = new TiledLevel(Reg.levels.get(map));

		backMap.clear();
		frontMap.clear();
		doorsGroup.clear();

		backMap.add(Reg.level.blockedtiles);
		backMap.add(Reg.level.background);
		frontMap.add(Reg.level.foreground);
		doorsGroup.add(Reg.level.doors);

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
		FlxG.collide(player, characters, touchCharacters);

		FlxG.overlap(player, doorsGroup, touchDoor);

		//FlxG.overlap(player, characters, touchCharacters);

		if (FlxG.keys.justPressed.F8)
		{
			Reg.request.test();
		}

		if (FlxG.keys.anyPressed(["SPACE", "ENTER"]))
		{
			characters.forEach(checkCharacters);
		}
	}

	public function checkCharacters(object:FlxBasic):Void
	{
		//var point:FlxPoint = player.checkNextTile();
		trace(object);
	}

	public function touchDoor(p:Player, d:Door):Void
	{
		if (p.overlaps(d) && d.active && !p.moveToDoor)
		{
			p.moveToDoor = true;
			loadMap(d.map, d.posX, d.posY);
		}
	}

	public function touchCharacters(p:Player, c:Character):Void
	{
		p.moveToNextTile = false;

		if (FlxG.keys.anyPressed(["SPACE", "ENTER"]))
		{
			trace('kek');
		}
	}
}
