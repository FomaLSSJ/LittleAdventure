package;

import flixel.group.FlxGroup.FlxTypedGroup;

class Inventory extends FlxTypedGroup<Item>
{
	public function new(MaxSize:Int=0):Void
	{
		super(MaxSize);
	}
	
	public function addItem(item:Dynamic):Void
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
		
		this.add(append);
		return;
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
	
	public function removeItem(name:Dynamic):Void
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
				this.remove(item);
				return;
			}
		});
	}
}