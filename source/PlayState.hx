package;

import haxe.Timer;
import openfl.Lib;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.group.FlxGroup.FlxTypedGroup;
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
	
	private var testing:Bool = false;
	
	override public function create():Void
	{
		super.create();
		
		FlxG.console.registerFunction("playerPos", function ():String
		{
			return "X:" + player.x + " Y:" + player.y + " DIR:" + player.getDirection();
		});
		
		FlxG.console.registerFunction("useItem", function ():Void
		{
			Reg.inv.useItem();
		});
		
		#if flash
		Lib.current.stage.application.onExit.add(function (code):Void
		{
			trace('Exit with code: $code');
		});
		#end
		
		Reg.itemsList.set("letter", new Item("Letter", AssetPaths.letter__png));
		Reg.itemsList.set("pencil", new Item("Pencil", AssetPaths.pencil__png));
		Reg.itemsList.set("diskette", new Item("Diskette", true, AssetPaths.diskette__png));
		
		Reg.levels.set("global", AssetPaths.global__tmx);
		Reg.levels.set("home1f", AssetPaths.home1f__tmx);
		Reg.levels.set('market', AssetPaths.market__tmx);

		//TODO Testing remove after//
		Reg.inv.addItem('letter');
		Reg.inv.addItem('pencil');
		Reg.inv.addItem('diskette');
		
		Reg.inv.removeItem('letter', 2);
		
		var letter:Item = Reg.itemsList.get("letter");
		letter.setScript([
			[ "key" => "string",   "data" => "You: Hmm.." ],
			[ "key" => "string",   "data" => "You: Only letter." ],
			[ "key" => "string",   "data" => "You: Nothing different." ]
		]);
		/////////////////////////////
		
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

		trace(Reg.inv.getItemsName());

		var npc:Character = new Character(9 * 16, 13 * 16, AssetPaths.merchant__png);
		npc.id = "npc0001";
		npc.name = "NPC Character";
		npc.dialog = [
			[ "key" => "string",   "data" => "Richard: Hey how are you today!" ],
			[ "key" => "string",   "data" => "You: I'm ok, thank you." ],
			[ "key" => "string",   "data" => "Richard: Do you want some candy?" ],
			[ "key" => "function", "data" => { "field": "calc", "args": [ 3, 3 ] } ],
			[ "key" => "string",   "data" => "You: No."],
			[ "key" => "string",   "data" => "Richard: Ok, take this Letter." ],
			[ "key" => "function", "data" => {"field": "addItem", "args": [ "letter" ]} ],
			[ "key" => "string",   "data" => "Richard: And this Diskette." ],
			[ "key" => "function", "data" => {"field": "addItem", "args": [ "diskette" ]} ],
			[ "key" => "string",   "data" => "You: Thanks." ]
		];

		Reg.charactersMap.set(npc.id, npc);
		Reg.charactersGroup.add(npc);

		var bro:Character = new Character(20 * 16, 13 * 16, AssetPaths.char__png);
		bro.id = "bro0001";
		bro.name = "Bro";
		bro.dialog = [
			[ "key" => "string",   "data" => "Bro: Hey, Bro1!" ],
			[ "key" => "function", "data" => { field: "endDialog", args: [] } ],
			[ "key" => "string",   "data" => "Bro: Hey, Bro2!"],
			[ "key" => "destroy",  "data" => { index: 4 } ],
			[ "key" => "string",   "data" => "Bro: Hey, Bro3!" ],
			[ "key" => "function", "data" => { field: "endDialog", args: [] } ],
			[ "key" => "index",    "data" => { index: 4 } ]
		];

		Reg.charactersMap.set(bro.id, bro);
		Reg.charactersGroup.add(bro);
		
		Reg.gui.init();
		guiGroup.add(Reg.gui);

		add(backMap);
		add(objectGroup);
		add(Reg.charactersGroup);
		add(frontMap);
		add(guiGroup);
	}

	private function loadMap(map:String, ?playerX:Int = 0, ?playerY:Int = 0):Void
	{
		if (Reg.timer.current != 0)
		{
			Reg.client.updateCharacterStatistics();
		}
		
		Reg.charactersGroup.forEach(function(char:Character):Void
		{
			Reg.charactersTempData.set(char.id, {"id": char.id, "x": char.x, "y": char.y, "name": char.name, "map": Reg.current, "direction": char.getDirection()});
			trace(char.name, char.x, char.y, Reg.current);
		});
		
		Reg.current = map;
		Reg.level = new TiledLevel(Reg.levels.get(map));

		backMap.clear();
		frontMap.clear();
		doorsGroup.clear();
		Reg.charactersGroup.clear();

		if (!Reg.charactersMap.exists("girl0001") && map == "home1f") {
			var girl:Character = new Character(6 * 16, 6 * 16, AssetPaths.beachgirl__png);
			girl.id = "girl0001";
			girl.name = "Beach Girl";
			girl.dialog = [
				[ "key" => "string", "data" => "Girl: Hi!" ]
			];

			Reg.charactersMap.set(girl.id, girl);
			Reg.charactersGroup.add(girl);
		}
		
		backMap.add(Reg.level.blockedtiles);
		backMap.add(Reg.level.background);
		frontMap.add(Reg.level.foreground);
		doorsGroup.add(Reg.level.doors);

		for (data in Reg.charactersTempData)
		{
			if (Reg.current == data.map)
			{
				var char:Character = Reg.charactersMap.get(data.id);
				char.setPosition(data.x, data.y);
				
				if (!char.alive)
				{
					char.revive();
				}

				Reg.charactersGroup.add(Reg.charactersMap.get(data.id));
			}
		}
		
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
		FlxG.collide(player, Reg.charactersGroup, player.collideCharacters);


		if (FlxG.keys.justPressed.F8)
		{
			Reg.gui.toggleDialog();
		}

		var stamp:Float = Timer.stamp();
		var offset:Float = Reg.timer.offset;
		var current:Float = Reg.timer.current;

		if (stamp + offset > current + 1)
		{
			Reg.timer.current = stamp + offset;
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
