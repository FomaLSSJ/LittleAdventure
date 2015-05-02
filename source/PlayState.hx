package ;

import OgmoLoader;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxObject;
import flixel.group.FlxGroup;
import flixel.group.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tile.FlxTilemap;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import lime.graphics.Image;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.DisplayObject;

import com.newgrounds.*;
import com.newgrounds.components.*;

using Reflect;

class PlayState extends FlxState
{
	static public var characterList:Array<Dynamic> = [];
	static public var doors:Array<Dynamic> = [];
	static public var inv:FlxGroup = new FlxGroup();
	static public var dialogIndex:Int = 0;
	static public var invBg:FlxSprite;
	static public var inventory:Inventory;
	
	private var tempArr:Array<Dynamic> = [];
	private var menuChoice:Array<Dynamic> = [];
	
	private var map:OgmoLoader;
	private var mapBackground:FlxTilemap;
	private var mapForeground:FlxTilemap;
	private var mapBlock:FlxTilemap;
	
	private var battleSystem:BattleSystem;
	
	private var systemMsg:Character;
	private var player:Character;
	private var tempChar:Character;
	private var useNPC:Character;
	private var boots:Character;
	private var can:Character;
	private var beachgirl:Character;
	private var merchant:Character;
	private var pcHome:Character;
	private var diskette:Character;
	
	private var background:FlxGroup = new FlxGroup();
	private var foreground:FlxGroup = new FlxGroup();
	private var objects:FlxGroup = new FlxGroup();
	private var cg:FlxGroup = new FlxGroup();
	private var gui:FlxGroup = new FlxGroup();
	private var blank:FlxGroup = new FlxGroup();
	private var invScr:FlxGroup = new FlxGroup();
	
	private var disableAll:Bool = false;
	private var freeze:Bool = false;
	private var invTrg:Bool = false;
	private var invCheck:Bool = true;
	private var imgLock:Bool = false;
	private var dialogLock:Bool = false;
	private var inCombat:Bool = false;
	
	private var letterCheck:Int = 3;
	private var bootsTrigger:Bool = false;
	
	private var money:Int = 100;
	private var selTrigger:Int = 0;
	private var menuSelect:Int = 0;
	
	private var invDiscr:String = "None";
	private var mapData:String = "null";
	
	private var imgPlayer:String = "assets/images/char.png";
	private var imgBeachgirl:String = "assets/images/beachgirl.png";
	private var imgMerchant:String = "assets/images/merchant.png";
	
	private var photoBeachGirlTits:String = "assets/images/photoTits.png";
	private var photoBeachGirlPussy:String = "assets/images/photoPussy.png";
	private var photoBeachGirlAss:String = "assets/images/photoAss.png";
	private var photoFloppyBeachGirl:String = "assets/images/floppyBeachgirl.png";
	private var photoLetterPhoto:String = "assets/images/letterPhoto.png";
	
	private var cgBeachgirl:String = "assets/images/cgBeachgirl.png";
	
	private var imgPhoto:String = "assets/images/photo.png";
	private var imgPencil:String = "assets/images/pencil.png";
	private var imgLetter:String = "assets/images/letter.png";
	private var imgBoots:String = "assets/images/boots.png";
	private var imgCan:String = "assets/images/can.png";
	private var imgDiskette:String = "assets/images/diskette.png";
	private var imgSel:String = "assets/images/select.png";
	
	private var dialogBg:FlxSprite;
	private var blankBg:FlxSprite;
	private var invSel:FlxSprite;
	private var imgShow:FlxSprite;
	
	private var dialogText:FlxText;
	private var dialogChoice:FlxText;
	private var invMoney:FlxText;
	private var selDiscr:FlxText;
	
	override public function create():Void
	{	
		systemMsg = new Character(9999, 9999, imgSel);
		systemMsg.name = "systemMsg";
		player = new Character(5, 5, imgPlayer);
		player.name = "player";
		boots = new Character(8, 5, imgBoots);
		boots.name = "boots";
		boots.dialog = ["::addItem@Boots",
						"::teleObj@-1,-1,2",
						"::changeCharLine@5,0",
						"--- You have found Boots --- "];
		can = new Character(9, 5, imgCan);
		can.name = "can";
		can.dialog = ["::addItem@Jaguar",
					  "::teleObj@-1,-1,3",
					  "::changeCharLine@5,0",
					  "--- You have found Jaguar --- "];
		beachgirl = new Character(16, 8, imgBeachgirl);
		beachgirl.name = "beachgirl";
		beachgirl.dialog = ["School Girl: Hello",
							"School Girl: Urf, you want my photo?",
							"Urf: Yeah, I want this HURMA!",
							"::setQuestion@School Girl: What are you like?",
							"::addAnswerInMenu@Tits,9",
							"::addAnswerInMenu@Pussy,14",
							"::addAnswerInMenu@Ass,19",
							"::addAnswerInMenu@Exit,24",
							"::showMenuChoice",
							"School Girl: Ok, I give this to you.",
							"::addPhoto@Beach Girl Photo Tits",
							"--- You received photo ---",
							"::changeCharLine@4,27",
							"::endDialog",
							"School Girl: Ok, I give this to you.",
							"::addPhoto@Beach Girl Photo Pussy",
							"--- You received photo ---",
							"::changeCharLine@4,27",
							"::endDialog",
							"School Girl: Ok, I give this to you.",
							"::addPhoto@Beach Girl Photo Ass",
							"--- You received photo ---",
							"::changeCharLine@4,27",
							"::endDialog",
							"School Girl: All right, see you later.",
							"::changeCharLine@4,4",
							"::endDialog",
							"School Girl: You got photo, smart boy."];
		merchant = new Character(7, 6, imgMerchant);
		merchant.name = "merchant";
		merchant.dialog = ["Merchant: Hi, Urf.",
						   "::checkItem@Boots,2",
						   "::addAnswerInMenu@Boots - 80$,10",
						   "::checkItem@Jaguar,4",
						   "::addAnswerInMenu@Jaguar - 50$,16",
						   "::checkItem@Diskette,6",
						   "::addAnswerInMenu@Diskette - 50$,22",
						   "::setQuestion@Merchant: Buy something?",
						   "::addAnswerInMenu@Exit,28",
						   "::showMenuChoice",
						   "Urf: Give me Boots.",
						   "::setMoney@-80,31",
						   "Merchant: Alright, thanks for buy.",
						   "::teleObj@9,6,2",
						   "::changeCharLine@5,29",
						   "::endDialog",
						   "Urf: Give me Jaguar.",
						   "::setMoney@-50,31",
						   "Merchant: Alright, thanks for buy.",
						   "::teleObj@9,6,3",
						   "::changeCharLine@5,29",
						   "::endDialog",
						   "Urf: Give me Diskette.",
						   "::setMoney@-50,31",
						   "Merchant: Alright, thanks for buy.",
						   "::teleObj@9,6,7",
						   "::changeCharLine@5,29",
						   "::endDialog",
						   "Merchant: Ok, see you later.",
						   "::endDialog",
						   "Merchant: Please, take your item.",
						   "::endDialog",
						   "Merchant: Sorry, you don't have money."];
		pcHome = new Character(4, 1, null);
		pcHome.name = "pchome";
		pcHome.dialog = ["::checkItem@Diskette,2",
						 "Urf: I masturbating this morning.\nI do not need a PC now.",
						 "::endDialog",
						 "Welcome in BolgenOS!",
						 "$/>CD FLOPPY\n$/>LS\n--- photo_022812.img\n$/>SHOW photo_022812.img",
						 "::showImage@floppyBeachgirl,320,240",
						 "...",
						 "::hideImage",
						 "CLOSE photo\n$/>SHUTDOWN -h now"];
		diskette = new Character(10, 5, imgDiskette);
		diskette.name = "diskette";
		diskette.dialog = ["::addItem@Diskette",
						   "::teleObj@-1,-1,7",
						   "::changeCharLine@5,0",
						   "--- You have found Diskette ---"];
		
		characterList.push(systemMsg);
		characterList.push(player);
		characterList.push(boots);
		characterList.push(can);
		characterList.push(beachgirl);
		characterList.push(merchant);
		characterList.push(pcHome);
		characterList.push(diskette);
		
		setMap("home1f");
		
		dialogBg = new FlxSprite(0, 0);
		dialogBg.makeGraphic(FlxG.width, 60, 0xFF333333);
		dialogBg.alpha = .75;
		dialogBg.scrollFactor.x = dialogBg.scrollFactor.y = 0;
		
		dialogText = new FlxText(5, 5, FlxG.width - 10, "...");
		dialogText.scrollFactor.x = dialogText.scrollFactor.y = 0;
		
		dialogChoice = new FlxText(5, 15, 10, ">");
		dialogChoice.scrollFactor.x = dialogChoice.scrollFactor.y = 0;
		dialogChoice.visible = false;
		
		blankBg = new FlxSprite(0, 0);
		blankBg.makeGraphic(FlxG.width, FlxG.height, 0xFF333333);
		blankBg.alpha = 1;
		blankBg.scrollFactor.x = blankBg.scrollFactor.y = 0;
		
		invBg = new FlxSprite(0, 0);
		invBg.makeGraphic(FlxG.width, 60, 0xFF333333);
		invBg.alpha = .75;
		invBg.y = FlxG.height - invBg.height;
		invBg.scrollFactor.x = invBg.scrollFactor.y = 0;
		
		invMoney = new FlxText(FlxG.width / 2, invBg.y + 2, FlxG.width, "Money : " + money + "$");
		invMoney.scrollFactor.x = invMoney.scrollFactor.y = 0;
		
		invSel = new FlxSprite();
		invSel.loadGraphic(imgSel);
		invSel.x = 16;
		invSel.y = invBg.y + 42;
		invSel.scrollFactor.x = invSel.scrollFactor.y = 0;
		
		selDiscr = new FlxText(4, invBg.y + 2, FlxG.width, "Info: " + invDiscr);
		selDiscr.scrollFactor.x = selDiscr.scrollFactor.y = 0;
		
		background.add(mapBlock);
		background.add(mapBackground);
		
		objects.add(player);
		objects.add(boots);
		objects.add(can);
		objects.add(beachgirl);
		objects.add(merchant);
		objects.add(pcHome);
		objects.add(diskette);
		
		foreground.add(mapForeground);
		
		gui.add(dialogBg);
		gui.add(dialogText);
		gui.add(dialogChoice);
		
		blank.add(blankBg);
		
		inv.add(invBg);
		inv.add(invMoney);
		inv.add(selDiscr);
		
		add(background);
		add(objects);
		add(foreground);
		add(cg);
		add(blank);
		add(gui);
		add(inv);
		add(invSel);
		
		inventory = new Inventory();
		
		inventory.items.push(new Item("Pencil", imgPencil));
		inventory.items.push(new Item("Letter", imgLetter));
		inventory.items.push(new Item("Boots", imgBoots));
		inventory.items.push(new Item("Jaguar", imgCan));
		inventory.items.push(new Item("Diskette", imgDiskette));
		
		inventory.addItem("Pencil");
		inventory.addItem("Letter");
		inventory.addItem("Jaguar");
		inventory.addItem("Jaguar");
		
		inventory.photos.push(new Photo("Beach Girl Photo Tits", imgPhoto, photoBeachGirlTits, 320, 240));
		inventory.photos.push(new Photo("Beach Girl Photo Pussy", imgPhoto, photoBeachGirlPussy, 320, 240));
		inventory.photos.push(new Photo("Beach Girl Photo Ass", imgPhoto, photoBeachGirlAss, 320, 240));
		inventory.photos.push(new Photo("Beach Girl Photo Letter", imgPhoto, photoLetterPhoto, 320, 240));
		
		gui.visible = false;
		blank.visible = false;
		inv.visible = false;
		invSel.visible = false;
		
		battleSystem = new BattleSystem(); // Testing BattleSystem screen.
		inCombat = true;
		player.active = false;
		battleSystem.initBattle(player, beachgirl);
		add(battleSystem);
		
		super.create();
	}
	
	private function setMap(mapData:String, posX:Int = 0, posY:Int = 0):Void
	{
		this.mapData = mapData;
		
		if (mapData != "self")
		{
			background.clear();
			foreground.clear();
			
			map = new OgmoLoader("assets/data/" + mapData + ".oel");
			mapBackground = map.loadTilemap(AssetPaths.basictiles__png, 16, 16, "background");
			mapForeground = map.loadTilemap(AssetPaths.uptiles__png, 16, 16, "foreground");
			mapBlock = map.loadTilemap(AssetPaths.dirblock__png, 16, 16, "blockpath");
			
			map.loadEntities(placeEntities, "entities");
			
			player.setBlockMap(mapBlock);
			
			background.add(mapBlock);
			background.add(mapBackground);
			foreground.add(mapForeground);
			
			for (i in 2...characterList.length)
			{
				if (characterList[i].idMap == mapData)
					characterList[i].enable = true;
				else
					characterList[i].enable = false;
			}
			
			for (i in 0...doors.length)
			{
				if (doors[i].idMap == mapData)
					doors[i].enable = true;
				else
					doors[i].enable = false;
			}
		}
		
		if (player != null)
		{
			if (posX != 0 || posY != 0)
			{
				player.x = posX * 16;
				player.y = posY * 16;
			}
		}
	}
	
	private function placeEntities(entityName:String, entityData:Xml):Void
	{
		var x:Int = Std.parseInt(entityData.get("x"));
		var y:Int = Std.parseInt(entityData.get("y"));
		var mapData:String = entityData.get("mapData");
		var mapInfo:String = map.loadMapValue("mapName");
		var posX:Int = Std.parseInt(entityData.get("posX"));
		var posY:Int = Std.parseInt(entityData.get("posY"));
		
		if (entityName == "door")
		{
			var door:Door = new Door(mapData, posX, posY, x, y);
			door.idMap = mapInfo;
			objects.add(door);
			doors.push(door);
		}
		else
		{
			for (i in 0...characterList.length)
				if (characterList[i].name == entityName)
					characterList[i].idMap = mapInfo;
		}
	}
	
	private function callEventDialog(charNum:Int, blankVis:Bool, guiVis:Bool):Void
	{
		blank.visible = blankVis;
		gui.visible = guiVis;
		
		freeze = true;
		invTrg = false;
		inv.visible = false;
		invSel.visible = false;
		
		useNPC = characterList[charNum];
		useNPC.dialogLine = 0;
		dialogIndex = 0;
		dialogText.text = useNPC.dialog[0];
	}
	
	private function setMoney(input:String):Void
	{
		var count:Int = Std.parseInt(input.split(",")[0]);
		var index:Int = Std.parseInt(input.split(",")[1]);
		var amount:Int = money + count;
		if (amount < 0)
			dialogIndex = index;
		else
			money += count;
		
		invMoney.text = "Money : " + money + "$";
	}
	
	private function getMedal(medal:String):Void
	{
		var popup:MedalPopup = new MedalPopup();
		popup.x = 380;
		popup.y = 10;
		FlxG.stage.addChild(popup);
		API.unlockMedal(medal);
	}
	
	private function checkEvent():Void
	{
		while (checkLink(useNPC.dialog[dialogIndex]))
		{
			runEvent(useNPC.dialog[dialogIndex]);
			dialogIndex++;
		}
		if (!dialogLock)
			dialogText.text = useNPC.dialog[dialogIndex];
	}
	
	private function setQuestion(input:String):Void
	{
		dialogText.text = input;
	}
	
	private function addItem(name:String):Void
	{
		inventory.addItem(name);
	}
	
	private function addPhoto(name:String):Void
	{
		inventory.addPhoto(name);
	}
	
	private function remItem(name:String):Void
	{
		inventory.remItem(name);
	}
	
	private function checkItem(input:String):Void
	{
		inventory.checkItem(input);
	}
	
	private function addAnswerInMenu(input:String):Void
	{
		var answer:String = input.split(",")[0];
		var lineIndex:Int = Std.parseInt(input.split(",")[1]);
		
		menuChoice.push(answer);
		menuChoice.push(lineIndex);
	}
	
	private function showMenuChoice():Void
	{
		dialogLock = true;
		dialogChoice.visible = true;
		dialogChoice.y = 15;
		menuSelect = 0;
		
		var i:Int = 0;
		while (i < menuChoice.length)
		{
			dialogText.text += "\n  " + menuChoice[i];
			i += 2;
		}
	}
	
	private function endDialog():Void
	{
		freeze = false;
		gui.visible = false;
	}
	
	private function showImage(input:String):Void
	{
		var img:String = "assets/images/" + input.split(",")[0] + ".png";
		var w:Int = Std.parseInt(input.split(",")[1]);
		var h:Int = Std.parseInt(input.split(",")[2]);
		
		gui.visible = false;
		
		imgShow = new FlxSprite();
		imgShow.loadGraphic(img, false, w, h);
		imgShow.x = (FlxG.width - imgShow.width) / 2;
		imgShow.y = (FlxG.height - imgShow.height) / 2;
		imgShow.scrollFactor.x = imgShow.scrollFactor.y = 0;
		add(imgShow);
	}
	
	private function hideImage():Void
	{
		imgShow.kill();
		gui.visible = true;
	}
	
	private function changeLine(line:String):Void
	{
		var lineIndex:Int = Std.parseInt(line);
		dialogIndex = lineIndex;
	}
	
	private function changeCharLine(line:String):Void
	{
		var charIndex:Int = Std.parseInt(line.split(",")[0]);
		var lineIndex:Int = Std.parseInt(line.split(",")[1]);
		characterList[charIndex].dialogLine = lineIndex;
	}
	
	private function changeSpeed(input:String):Void
	{
		var speed:Int = Std.parseInt(input);
		player.speed = speed;
	}
	
	private function teleObj(input:String):Void
	{
		var posX:Int = Std.parseInt(input.split(",")[0]);
		var posY:Int = Std.parseInt(input.split(",")[1]);
		var obj:Int = Std.parseInt(input.split(",")[2]);
		
		tempChar = characterList[obj];
		tempChar.x = posX * 16;
		tempChar.y = posY * 16;
	}
	
	private function runEvent(line:String):Void
	{
		if (line.substring(0, 2) == "::")
		{
			var func, arg:String = "";
			
			if (line.split("@")[1] != null)
			{
				func = line.split("@")[0].substring(2);
				arg = line.split("@")[1];
				
				this.field(func)(arg);
			}
			else
			{
				func = line.split("@")[0].substring(2);
				this.field(func)();
			}
		}
	}
	
	private function checkLink(line:String):Bool
	{
		if (line.substring(0, 2) == "::")
			return true;
		return false;
	}
	
	private function toogleBlank(input:String):Void
	{	
		blank.visible = Std.hasField(input);
	}
	
	private function checkMoveDoor():Void
	{
		if (player.checkDoor(player.moveDir))
		{
			for (i in 0...doors.length)
			{
			if (player.getNextTile(player.moveDir).x / 16 == doors[i].x / 16 &&
				player.getNextTile(player.moveDir).y / 16 == doors[i].y / 16 &&
				doors[i].enable)
				if (player.checkPath)
					setMap(doors[i].mapData, doors[i].posX, doors[i].posY);
			}
		}
	}
	
	override public function destroy():Void
	{
		super.destroy();
	}
	
	override public function update():Void
	{
		super.update();
		
		var _tempDir:String = "";
		var _up:Bool = false;
		var _down:Bool = false;
		var _left:Bool = false;
		var _right:Bool = false;
		var _use:Bool = false;
		var _inv:Bool = false;
		
		_up = FlxG.keys.anyPressed(["UP", "W"]);
		_down = FlxG.keys.anyPressed(["DOWN", "S"]);
		_left = FlxG.keys.anyPressed(["LEFT", "A"]);
		_right = FlxG.keys.anyPressed(["RIGHT", "D"]);
		_use = FlxG.keys.anyJustPressed(["ENTER", "Z"]);
		_inv = FlxG.keys.anyJustPressed(["SHIFT", "X"]);
		
		if (_up && _down)
			_up = _down = false;
		if (_left && _right)
			_left = _right = false;
		
		if (FlxG.keys.anyJustPressed(["DELETE"]))
		{
			getMedal("Fu***ng windows!");
			FlxG.switchState(new BsodState());
		}
		
		if (!disableAll)
		{
			if (!freeze)
			{
				if (inCombat)
				{
					if (battleSystem.outcome == VICTORY)
					{
						inCombat = false;
						player.active = true;
					}
				}
				
				if (!invTrg)
				{
					invSel.visible = false;
					
					if (_up || _down || _left || _right)
					{
						if (_up) { player.move("UP"); }
						else if (_down) { player.move("DOWN"); }
						else if (_left) { player.move("LEFT"); }
						else if (_right) { player.move("RIGHT"); }
						checkMoveDoor();
					}
					
					if (_use)
					{
						if (!player.checkNPC(player.moveDir))
						{
							switch (player.moveDir)
							{
								case "UP":
									_tempDir = "DOWN";
								case "DOWN":
									_tempDir = "UP";
								case "LEFT":
									_tempDir = "RIGHT";
								case "RIGHT":
									_tempDir = "LEFT";
							}
							useNPC = player.getNPC(player.moveDir);
							useNPC.moveDir = _tempDir;
							dialogIndex = useNPC.dialogLine;
							
							checkEvent();
							
							freeze = !freeze;
							gui.visible = true;
							inv.visible = false;
						}
					}
				}
				
				if (_inv)
				{
					inventory.updateInv();
					selTrigger = 0;
					
					if (inventory.inventory.length == 0 && inventory.photoalbum.length > 0)
						invCheck = false;
					
					if (invTrg)
						invTrg = false;
					else
						invTrg = true;
					
					if (inv.visible)
						inv.visible = false;
					else
						inv.visible = true;
					
					if (imgLock)
					{
						imgShow.kill();
						imgLock = false;
					}
				}
				
				if (invTrg)
				{
					if (invCheck)
					{
						tempArr = inventory.inventory;
						invSel.y = 196;
					}
					else
					{
						tempArr = inventory.photoalbum;
						invSel.y = 220;
					}
					
					invSel.x = invBg.x + 20 * selTrigger + 4;
					if (inventory.inventory.length != 0 || inventory.photoalbum.length != 0)
						invDiscr = tempArr[selTrigger].name;
					selDiscr.text = "Info: " + invDiscr;
					
					if (tempArr.length > 0)
					{
						invSel.visible = true;
						
						if (!imgLock)
						{
							if (FlxG.keys.anyJustPressed(["RIGHT","D"]))
							{
								if (selTrigger >= tempArr.length - 1)
									selTrigger = 0;
								else
									selTrigger += 1;
							}
							if (FlxG.keys.anyJustPressed(["LEFT", "A"]))
							{
								if (selTrigger <= 0)
									selTrigger = tempArr.length - 1;
								else
									selTrigger -= 1;
							}
							if (FlxG.keys.anyJustPressed(["UP","W"]))
							{
								if (inventory.inventory.length > 0)
								{
									invCheck = true;
									if (inventory.inventory.length - 1 < selTrigger)
										selTrigger = inventory.inventory.length - 1;
								}
							}
							if (FlxG.keys.anyJustPressed(["DOWN","S"]))
							{
								if (inventory.photoalbum.length > 0)
								{
									invCheck = false;
									if (inventory.photoalbum.length - 1 < selTrigger)
										selTrigger = inventory.photoalbum.length - 1;
								}
							}
						}
						
						if (_use)
						{
							if (!invCheck)
							{
								if (!imgLock)
								{
									imgShow = new FlxSprite();
									imgShow.loadGraphic(inventory.photoalbum[selTrigger].embed, false, inventory.photoalbum[selTrigger].imgW, inventory.photoalbum[selTrigger].imgH);
									imgShow.x = (FlxG.width - imgShow.width) / 2;
									imgShow.y = (FlxG.height - imgShow.height) / 2;
									imgShow.scrollFactor.x = imgShow.scrollFactor.y = 0;
									add(imgShow);
									imgLock = true;
								}
								else
								{
									imgShow.kill();
									imgLock = false;
								}
							}
							else
							{
								switch (inventory.inventory[selTrigger].name)
								{
									case "Pencil":
										systemMsg.dialog = ["Urf: Hmm.. pencil."];
										callEventDialog(0, false, true);
									case "Letter":
										if (letterCheck == 0)
										{
											systemMsg.dialog = ["Urf: Ok.. I check this letter.",
																"...",
																"::addPhoto@Beach Girl Photo Letter",
																"::remItem@Letter",
																"--- You have found Photo ---"];
											callEventDialog(0, false, true);
										}
										else
										{
											systemMsg.dialog = ["Urf: Hmm.. letter."];
											callEventDialog(0, false, true);
											letterCheck--;
										}
									case "Boots":
										if (bootsTrigger == false)
										{
											bootsTrigger = !bootsTrigger;
											changeSpeed("2");
											systemMsg.dialog = ["Urf: I equiped boots."];
											callEventDialog(0, false, true);
										}
										else
										{
											bootsTrigger = !bootsTrigger;
											changeSpeed("1");
											systemMsg.dialog = ["Urf: I unequiped boots."];
											callEventDialog(0, false, true);
										}
									case "Diskette":
										systemMsg.dialog = ["Urf: Floppy Diskette 3.5\""];
										callEventDialog(0, false, true);
								}
							}
						}
					}
				}
			}
			else
			{
				if (!dialogLock)
				{
					if (_use)
					{
						dialogIndex++;
						if (dialogIndex >= useNPC.dialog.length)
						{
							freeze = !freeze;
							gui.visible = false;
							inv.visible = false;
						}
						else
						{
							checkEvent();
						}
					}
				}
				else
				{
					if (FlxG.keys.anyJustPressed(["UP", "W"]))
					{
						menuSelect--;
						if (menuSelect < 0)
						{
							menuSelect = Std.int(menuChoice.length / 2 - 1);
							dialogChoice.y = 15 + (10 * menuSelect);
						}
						else
							dialogChoice.y -= 10;
					}
					if (FlxG.keys.anyJustPressed(["DOWN", "S"]))
					{
						menuSelect++;
						if (menuSelect > Std.int(menuChoice.length / 2 - 1))
						{
							menuSelect = 0;
							dialogChoice.y = 15;
						}
						else
							dialogChoice.y += 10;
					}
					if (FlxG.keys.anyJustPressed(["ENTER", "Z"]))
					{
						dialogLock = false;
						dialogChoice.visible = false;
						dialogIndex = menuChoice[menuSelect * 2 + 1];
						dialogText.text = useNPC.dialog[dialogIndex];
						menuChoice.splice(0, menuChoice.length);
					}
				}
			}
		}
		
		FlxG.camera.setBounds(0, 0, 640, 480);
		FlxG.camera.follow(player);
	}
}
