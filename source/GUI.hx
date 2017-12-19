package;

import flixel.FlxG;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxSprite;

class GUI extends FlxGroup
{
	private var dialogBg:FlxSprite;
	private var dialogText:FlxText;
	private var blank:FlxSprite;
	private var status:FlxText;
	private var inventoryBg:FlxSprite;
	private var inventoryText:FlxText;
	private var selector:FlxSprite;

	private var dialog:FlxGroup = new FlxGroup();
	private var inventory:FlxGroup = new FlxGroup();
	private var items:FlxGroup = new FlxGroup();

	public function new():Void
	{
		super();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		status.text = '${ Reg.name } \n ${ Reg.triggers.get("timer") }';
		
		updateInventory();
	}

	public function init():Void
	{
		dialogBg = new FlxSprite();
		dialogBg.makeGraphic(FlxG.width, 60, 0xFF333333);
		dialogBg.scrollFactor.set(0, 0);
		dialogBg.alpha = .65;
		dialog.add(dialogBg);

		dialogText = new FlxText(10, 10, FlxG.width - 20, "__TEXT__");
		dialog.add(dialogText);

		status = new FlxText(10, 10, 128, Reg.name);
		status.scrollFactor.set(0, 0);
		status.visible = true;
		add(status);

		blank = new FlxSprite();
		blank.makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		blank.scrollFactor.set(0, 0);
		blank.visible = false;
		add(blank);

		dialog.visible = false;
		add(dialog);
		
		inventoryBg = new FlxSprite();
		inventoryBg.makeGraphic(FlxG.width, 90, 0xFF333333);
		inventoryBg.scrollFactor.set(0, 0);
		inventoryBg.alpha = .65;
		inventoryBg.y = FlxG.height - inventoryBg.height;
		inventory.add(inventoryBg);

		inventoryText = new FlxText(10, FlxG.height - inventoryBg.height + 10, FlxG.width - 20, "None");
		inventory.add(inventoryText);
		
		inventory.add(items);
		
		selector = new FlxSprite();
		selector.loadGraphic(AssetPaths.select__png);
		selector.scrollFactor.set(0, 0);
		selector.visible = false;
		selector.setPosition(10, 10);
		inventory.add(selector);
		
		inventory.visible = false;
		add(inventory);
	}

	public function toggleDialog():Void
	{
		dialog.visible = !dialog.visible;
		Reg.triggers.set("is_dialog", !Reg.triggers.get("is_dialog"));
	}

	public function toggleInventory():Void
	{
		if (!inventory.visible)
		{
			items.clear();
			Reg.inv.updateItems(inventoryBg.height);
			items.add(Reg.inv);
		}
		
		inventory.visible = !inventory.visible;
		Reg.triggers.set("is_inventory", !Reg.triggers.get("is_inventory"));
	}
	
	public function updateInventory():Void
	{
		if (Reg.inv.length > 0)
		{
			var firstItem:Item = Reg.inv.getFirstExisting();
			var select:Dynamic = Reg.triggers.get('select');
			
			if (select.y == 0)
			{
				var item:Item = Reg.inv.members[select.x];

				if (item.multiple == true)
				{
					inventoryText.text = "Selected: " + item.name + " i have " + item.count;
				}
				else
				{
					inventoryText.text = "Selected: " + item.name;
				}

				selector.setPosition(item.x, item.y);
			}
			
			selector.visible = true;
		}
		else
		{
			selector.visible = false;
		}
	}
	
	public function setText(text:String):Void
	{
		dialogText.text = text;
	}
	
	public function isActive():Bool
	{
		return dialog.visible && Reg.triggers.get("is_dialog") ||
			inventory.visible && Reg.triggers.get("is_inventory");
	}
	
	public function isActiveDialog():Bool
	{
		return dialog.visible && Reg.triggers.get("is_dialog");
	}
}
