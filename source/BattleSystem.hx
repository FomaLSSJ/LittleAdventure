package ;

import flixel.group.FlxGroup;
import flixel.group.FlxTypedGroup;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.FlxG;
import flixel.ui.FlxBar;
import flixel.util.FlxColor;
import flixel.FlxObject;
import flixel.tweens.FlxTween;
using flixel.util.FlxSpriteUtil;

class BattleSystem extends FlxTypedGroup<Dynamic>
{
	private var items:Array<Dynamic>;
	private var itemsInv:FlxGroup;
	private var selectIcon:FlxSprite;
	private var screen:FlxSprite;
	private var overlay:FlxSprite;
	private var menu:Array<FlxText>;
	private var wait:Bool = false;
	private var choise:Bool = false;
	private var action:Bool = false;
	private var inventory:Bool = false;
	private var pointer:FlxText;
	private var select:Int = 0;
	private var selectItem:Int = 0;
	private var maxOffset:Float = 0;
	private var message:FlxText;
	
	private var playerStatus:FlxText;
	private var enemyStatus:FlxText;
	
	private var playerHpBar:FlxBar;
	private var enemyHpBar:FlxBar;
	
	private var eventBar:FlxBar;
	private var eventHelp:FlxText;
	private var eventSwitch:Bool;
	private var eventValue:Float;
	
	public var player:Character;
	public var enemy:Character;
	
	public var outcome(default, null):Outcome;
	
	public function new():Void
	{
		super();
		
		screen = new FlxSprite();
		screen.makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		screen.alpha = .8;
		add(screen);
		
		overlay = new FlxSprite();
		overlay.makeGraphic(280, 120, FlxColor.WHITE);
		overlay.drawRect(1, 1, 68, 118, FlxColor.BLACK);
		overlay.drawRect(70, 1, 139, 44, FlxColor.BLACK);
		overlay.drawRect(70, 46, 139, 73, FlxColor.BLACK);
		overlay.drawRect(210, 1, 69, 118, FlxColor.BLACK);
		overlay.screenCenter(true, true);
		overlay.scrollFactor.set(0, 0);
		add(overlay);
		
		playerStatus = new FlxText(overlay.x + 10, overlay.y + 50, 60);
		playerStatus.scrollFactor.set(0, 0);
		add(playerStatus);
		enemyStatus = new FlxText(overlay.x + 220, overlay.y + 50, 60);
		enemyStatus.scrollFactor.set(0, 0);
		add(enemyStatus);
		
		menu = new Array<FlxText>();
		menu.push(new FlxText(overlay.x + 115, overlay.y + 60, 100, "ATTACK"));
		menu.push(new FlxText(overlay.x + 115, overlay.y + 70, 100, "DEFENCE"));
		menu.push(new FlxText(overlay.x + 115, overlay.y + 80, 100, "ITEMS"));
		menu.push(new FlxText(overlay.x + 115, overlay.y + 90, 100, "ESCAPE"));
		for (i in 0...menu.length)
		{
			var data:FlxText = menu[i];
			data.scrollFactor.set(0, 0);
			add(data);
		}
		
		pointer = new FlxText(menu[select].x - 20, menu[select].y, 20, ">");
		pointer.scrollFactor.set(0, 0);
		add(pointer);
		
		eventHelp = new FlxText(overlay.x + 100, overlay.y + 10, 110);
		add(eventHelp);
		
		eventBar = new FlxBar(overlay.x + 80, overlay.y + 30, FlxBar.FILL_LEFT_TO_RIGHT, 110, 10, null, "STR", 0, 40, true);
		add(eventBar);
		
		itemsInv = new FlxGroup();
		add(itemsInv);
		
		selectIcon = new FlxSprite().loadGraphic("assets/images/select.png", false, 16, 16);
		add(selectIcon);
		
		message = new FlxText(overlay.x + 70, overlay.y + 5, 100);
		message.alpha = 0;
		add(message);
		
		eventSwitch = true;
		eventValue = .5;
		active = visible = eventBar.visible = itemsInv.visible = selectIcon.visible = false;
	}
	
	public function initBattle(Player:Character, Enemy:Character):Void
	{
		player = Player;
		enemy = Enemy;
		
		statusUpd();
		
		outcome = NONE;
		
		active = visible = true;
	}
	
	private function statusUpd():Void
	{
		playerStatus.text = player.name.toUpperCase() + "\n\nHP:\n" + player.hp + "/" + player.hpMax + "\nKI:\n" + player.ki + "/" + player.hpMax;
		enemyStatus.text = enemy.name.toUpperCase() + "\n\nHP:\n" + enemy.hp + "/" + enemy.hpMax + "\nKI:\n" + enemy.ki + "/" + enemy.hpMax;
	}
	
	private function showMessage(input:String):Void
	{
		message.text = input;
		message.alpha = 1;
	}
	
	private function escape():Void
	{
		trace("escape");
	}
	
	override public function update():Void
	{
		if (outcome == VICTORY)
			active = visible = false;
		
		if (eventBar.visible && !action)
		{
			if (eventSwitch)
				eventBar.currentValue += eventValue;
			else
				eventBar.currentValue -= eventValue;
			
			if (eventBar.currentValue >= maxOffset)
				eventSwitch = false;
			else if (eventBar.currentValue <= 0)
				eventSwitch = true;
		}
		
		if (FlxG.keys.anyJustPressed(["UP", "W"]))
		{
			if (!choise)
			{
				select--;
				if (select < 0)
					select = menu.length - 1;
				pointer.y = menu[select].y;
			}
		}
		else if (FlxG.keys.anyJustPressed(["DOWN", "S"]))
		{
			if (!choise)
			{
				select++;
				if (select > menu.length - 1)
					select = 0;
				pointer.y = menu[select].y;
			}
		}
		else if (FlxG.keys.anyJustPressed(["LEFT", "A"]))
		{
			if (inventory)
			{
				selectItem--;
				if (selectItem < 0)
					selectItem = items.length - 1;
				selectIcon.x = items[selectItem].x;
			}
		}
		else if (FlxG.keys.anyJustPressed(["RIGHT", "D"]))
		{
			if (inventory)
			{
				selectItem++;
				if (selectItem > items.length - 1)
					selectItem = 0;
				selectIcon.x = items[selectItem].x;
			}
		}
		else if (FlxG.keys.anyJustPressed(["ENTER", "SPACE"]))
		{
			if (inventory)
			{
				inventory = itemsInv.visible = selectIcon.visible = false;
				PlayState.inventory.remItem(items[selectItem].name);
				switch (items[selectItem].name)
				{
					case "Jaguar":
						eventValue /= 2;
				}
			}
			
			if (!choise && !inventory)
			{
				switch(select)
				{
					case 0:
						eventBar.setRange(0, 40);
						eventBar.currentValue = Std.random(40);
						maxOffset = 40;
						eventHelp.text = "CRITICAL > 30\n                   |";
						eventBar.visible = eventHelp.visible = eventSwitch = choise = true;
						pointer.visible = action = false;
					case 1:
						eventBar.setRange(0, 20);
						eventBar.currentValue = Std.random(20);
						maxOffset = 20;
						eventHelp.text = "COUNTER > 15\n                   |";
						eventBar.visible = eventHelp.visible = eventSwitch = choise = true;
						pointer.visible = action = false;
					case 2:
						items = PlayState.inventory.checkItemsInv();
						if (items.length == 0)
							return;
						choise = inventory = true;
						pointer.visible = action = false;
						itemsInv.clear();
						for (i in 0...items.length)
						{
							items[i].x = overlay.x + 70 + 20 * i + 4;
							items[i].y = overlay.y + 10;
							itemsInv.add(items[i]);
						}
						itemsInv.visible = selectIcon.visible = true;
						selectItem = 0;
						selectIcon.x = items[selectItem].x;
						selectIcon.y = items[selectItem].y;
					case 3:
						escape();
				}
			}
			else if (choise && !inventory)
			{
				switch(select)
				{
					case 0:
						if (eventBar.currentValue >= 30)
							trace("Critical: " + Std.string(eventBar.currentValue + 10));
						else
							trace("Attack: " + Std.string(eventBar.currentValue));
					case 1:
						if (eventBar.currentValue >= 15)
							trace("Counter: " + Std.string(eventBar.currentValue));
						else
							trace("Defence: " + Std.string(eventBar.currentValue));
					case 2:
						//trace("items");
					case 3:
						trace("escape");
				}
				eventBar.visible = eventHelp.visible = choise = false;
				pointer.visible = action = true;
			}
		}
		else if (FlxG.keys.anyJustPressed(["E"]))
		{
			outcome = VICTORY;
		}
		
		super.update();
	}
}

enum Outcome {
	NONE;
	ESCAPE;
	VICTORY;
	DEFEAT;
}