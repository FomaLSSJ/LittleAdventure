package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.FlxBasic;
import flixel.math.FlxPoint;

class PlayState extends FlxState
{
	private var posX:Int = 10 * 16;
	private var posY:Int = 8 * 16;

	private var image:ImageLoad;
	private var player:Player;
	private var username:String;

	private var backMap:FlxGroup = new FlxGroup();
	private var frontMap:FlxGroup = new FlxGroup();
	private var objectGroup:FlxGroup = new FlxGroup();
	private var guiGroup:FlxGroup = new FlxGroup();
	private var doorsGroup:FlxGroup = new FlxGroup();
	private var charactersGroup:FlxGroup = new FlxGroup();

	override public function create():Void
	{
		super.create();

		Reg.levels.set("global", AssetPaths.global__tmx);
		Reg.levels.set("home1f", AssetPaths.home1f__tmx);
		Reg.levels.set('market', AssetPaths.market__tmx);

		loadMap("global");

		player = new Player(posX, posY, AssetPaths.char__png);
		objectGroup.add(player);

		/*
		image = new ImageLoad(0, 0, Reg.server + Reg.image, function ()
		{
			player = new Player(posX, posY, image.bitmapData);
			objectGroup.add(player);
		});
		*/

		var npc:Character = new Character(9 * 16, 13 * 16, AssetPaths.char__png);
		npc.name = "NPC Character";
		npc.dialog = ["Richard: Hey how are you today!",
			"You: I'm ok, thank you.",
			"Richard: Do you want some candy?",
			"You: No."];
		Reg.characters.add(npc);
		charactersGroup.add(Reg.characters);

		Reg.gui.init();
		guiGroup.add(Reg.gui);

		add(backMap);
		add(objectGroup);
		add(charactersGroup);
		add(frontMap);
		add(guiGroup);
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

		FlxG.overlap(player, doorsGroup, touchDoor);

		if (Reg.level.collide(player))
		{
			player.moveToNextTile = false;
		}
		FlxG.collide(player, charactersGroup, player.collideCharacters);


		if (FlxG.keys.justPressed.F8)
		{
			//Reg.request.test();
			Reg.gui.toggleDialog();
		}
	}

	public function touchDoor(p:Player, d:Door):Void
	{
		if (p.overlaps(d) && d.active && !p.moveToDoor)
		{
			p.moveToDoor = true;
			loadMap(d.map, d.posX, d.posY);
		}
	}
}
