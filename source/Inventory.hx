package ;
import flixel.FlxSprite;

class Inventory
{
	public var inventory:Array<Dynamic> = [];
	public var items:Array<Dynamic> = [];
	public var photoalbum:Array<Dynamic> = [];
	public var photos:Array<Dynamic> = [];
	
	public function new():Void
	{
		/* unused */
	}
	
	public function addItem(name:String):Void
	{
		var newItem:Item = null;
		
		for (i in 0...items.length)
			if (items[i].name == name)
				newItem = new Item(items[i].name, items[i].image);
		
		inventory.push(newItem);
		PlayState.inv.add(newItem);
		
		updateInv();
	}
	
	public function addPhoto(name:String):Void
	{
		var newPhoto:Photo = null;
		
		for (i in 0...photos.length)
			if (photos[i].name == name)
				newPhoto = new Photo(photos[i].name, photos[i].image, photos[i].embed, photos[i].imgW, photos[i].imgH);
		
		newPhoto.scrollFactor.x = newPhoto.scrollFactor.y = 0;
		photoalbum.push(newPhoto);
		PlayState.inv.add(newPhoto);
		
		updateInv();
	}
	
	public function remItem(name:String):Void
	{
		for (i in 0...inventory.length)
		{
			if (inventory[i].name == name)
			{
				PlayState.inv.remove(inventory[i], true);
				inventory.splice(i, 1);
				return;
			}
		}
	}
	
	public function checkItem(input:String):Void
	{
		for (i in 0...inventory.length)
		{
			if (inventory[i].name == input.split(",")[0])
				PlayState.dialogIndex = Std.parseInt(input.split(",")[1]);
		}
	}
	
	public function checkItemsInv():Array<Dynamic>
	{
		var itemsInv:Array<Dynamic> = [];
		
		for (i in 0...inventory.length)
		{
			if (inventory[i].name == "Jaguar")
			{
				var newItem:Item = new Item(inventory[i].name, inventory[i].image);
				itemsInv.push(newItem);
			}
		}
		
		return itemsInv;
	}
	
	public function updateInv():Void
	{
		for (i in 0...inventory.length)
		{
			inventory[i].x = PlayState.invBg.x + 20 * i + 4;
			inventory[i].y = 196;
		}
		
		for (j in 0...photoalbum.length)
		{
			photoalbum[j].x = PlayState.invBg.x + 20 * j + 4;
			photoalbum[j].y = 220;
		}
	}
}