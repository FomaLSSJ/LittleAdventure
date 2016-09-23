package;

import flixel.group.FlxGroup.FlxTypedGroup;

class Inventory extends FlxTypedGroup<Item>
{
	public function new(MaxSize:Int=0):Void
	{
		super(MaxSize);
	}
	
	public function addItem(item:Item):Void
	{
		this.add(item);
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
		
		this.forEach(function (item:Item):Void
		{
			names.push(item.name);
		});
		
		return names.join(", ");
	}
	
	public function removeItem(name:String):Void
	{
		this.forEach(function (item:Item):Void
		{
			if (item.name == name)
			{
				this.remove(item);
				return;
			}
		});
	}
}