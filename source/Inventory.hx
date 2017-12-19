package;

import flixel.FlxG;
import flixel.group.FlxGroup.FlxTypedGroup;

enum Direction {
	LEFT;
	RIGHT;
}

class Inventory extends FlxTypedGroup<Item>
{
	public function new(MaxSize:Int=0):Void
	{
		super(MaxSize);
	}
	
	public function addItem(item:Dynamic, ?Count:Int = 1):Void
	{
		var append:Item = null;
		
		if (Type.getClassName(Type.getClass(item)) == "String")
		{
			append = Reg.itemsList.get(item);
		}
		else
		{
			append = item;
		}
		
		if (checkItem(append.name) && append.multiple)
		{
			append.count += Count;
		}
		
		this.add(append);
	}
	
	public function getItem(name:String):Dynamic
	{
		var object:Item = null;
		
		this.forEach(function (item:Item):Void
		{
			if (item.name == name)
			{
				object = item;
			}
		});
		
		return object;
	}
	
	public function checkItem(name:String):Bool
	{
		var check:Bool = false;
		
		this.forEach(function (item:Item):Void
		{
			if (item.name == name)
			{
				check = true;
			}
		});
		
		return check;
	}
	
	public function getItemsName():String
	{
		var names:Array<String> = new Array<String>();
		
		if (this.length > 0)
		{
			this.forEach(function (item:Item):Void
			{
				names.push(item.name);
			});
			
			return names.join(", ");
		}
		else
		{
			return "None";
		}
	}
	
	public function removeItem(name:Dynamic, ?Count:Int = 1):Void
	{
		var found:String = "";
		
		if (Type.getClassName(Type.getClass(name)) == "Item")
		{
			found = name.name;
		}
		else
		{
			var item = Reg.itemsList.get(name);
			found = (item != null) ? item.name : name;
		}
		
		this.forEach(function (item:Item):Void
		{
			if (item.name == found)
			{
				var result:Int = item.count - Count;
				
				if (result > 1)
				{
					item.count -= Count;
				}
				else
				{
					this.remove(item, true);
				}
			}
		});
	}
	
	public function updateItems(offset:Float):Void
	{
		var index:Int = 0;
		var posY:Float = FlxG.height - offset + 32;

		this.forEach(function (item):Void
		{
			item.x = 6 + 20 * index + 4;
			item.y = posY;
			
			index++;
		});
	}
	
	public function moveSelector(direction:Direction):Void
	{
		var select:Dynamic = Reg.triggers.get("select");

		switch (direction) 
		{
			case Direction.LEFT:
				if (--select.x < 0)
				{
					select.x = Reg.inv.members.length - 1;
				}
			case Direction.RIGHT:
				if (++select.x > Reg.inv.length - 1)
				{
					select.x = 0;
				}
			default:
				return;
		}
		
		Reg.triggers.set("select", select);
	}
	
	public function useItem():Void
	{
		var select:Dynamic = Reg.triggers.get("select");
		var item:Item = Reg.inv.members[ select.x ];
		
		return item.startScript();
	}
}