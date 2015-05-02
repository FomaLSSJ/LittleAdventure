package ;

import flixel.FlxSprite;
import flixel.group.FlxGroup;
import flixel.tile.FlxTilemap;
import openfl.display.Bitmap;
import openfl.geom.Point;
import flixel.FlxObject;

class Character extends FlxSprite
{
	private var mapBlock:FlxTilemap;
	private var widthPx:UInt = 16;
	private var heightPx:UInt = 16;
	
	public var enable:Bool = true;
	public var moving:Bool = false;
	public var checkPath:Bool = true;
	public var moveDis:UInt = 0;
	public var dialogLine:Int = 0;
	public var speed:UInt = 1;
	public var name:String;
	public var idMap:String;
	public var moveDir:String = "DOWN";
	public var dialog:Array<String>;
	
	public var lv:UInt = 1;
	public var hpMax:UInt = 100;
	public var hp:UInt = 100;
	public var kiMax:UInt = 100;
	public var ki:UInt = 100;
	
	public function new(x:UInt, y:UInt, image:String, widthPx:Int = 16, heightPx:Int = 16, blockMap:FlxTilemap = null)
	{
		super(x * 16, y * 16);
		if (image != null)
			loadGraphic(image, true, widthPx, heightPx);
		else
			makeGraphic(16, 16, 0x0);
		
		this.mapBlock = blockMap;
		
		animation.add("DOWN_IDLE", [0]);
		animation.add("UP_IDLE", [3]);
		animation.add("LEFT_IDLE", [6]);
		animation.add("RIGHT_IDLE", [9]);
		
		animation.add("DOWN_WALK", [1, 2], 8);
		animation.add("UP_WALK", [4, 5], 8);
		animation.add("LEFT_WALK", [7, 8], 8);
		animation.add("RIGHT_WALK", [10, 11], 8);
	}
	
	public function setBlockMap(blockMap:FlxTilemap):Void
	{
		this.mapBlock = blockMap;
	}
	
	public function getTile():Int
	{
		return mapBlock.getTile(Math.floor(x / 16), Math.floor(y / 16));
	}
	
	public function checkDoor(dir:String):Bool
	{	
		for (i in 0...PlayState.doors.length)
		{
			if (getNextTile(dir).x / 16 == PlayState.doors[i].x / 16 &&
				getNextTile(dir).y / 16 == PlayState.doors[i].y / 16)
				return true;
		}
		return false;
	}
	
	public function look(dir:String):Void
	{
		moveDir = dir;
		switch (dir)
		{
			case "UP":
				animation.play("UP_IDLE");
			case "DOWN":
				animation.play("DOWN_IDLE");
			case "LEFT":
				animation.play("LEFT_IDLE");
			case "RIGHT":
				animation.play("RIGHT_IDLE");
		}
	}
	
	public function move(dir:String):Void
	{
		checkPath = true;
		
		switch (getTile())
		{
			case 1:
				if (dir == "UP")
					checkPath = false;
			case 2:
				if (dir == "DOWN")
					checkPath = false;
			case 3:
				if (dir == "LEFT")
					checkPath = false;
			case 4:
				if (dir == "RIGHT")
					checkPath = false;
			case 5:
				if (dir == "UP" || dir == "DOWN")
					checkPath = false;
			case 6:
				if (dir == "LEFT" || dir == "RIGHT")
					checkPath = false;
			case 7:
				if (dir == "UP" || dir == "LEFT")
					checkPath = false;
			case 8:
				if (dir == "UP" || dir == "RIGHT")
					checkPath = false;
			case 9:
				if (dir == "DOWN" || dir == "LEFT")
					checkPath = false;
			case 10:
				if (dir == "DOWN" || dir == "RIGHT")
					checkPath = false;
			case 11:
				if (dir == "UP" || dir == "LEFT" || dir == "RIGHT")
					checkPath = false;
			case 12:
				if (dir == "DOWN" || dir == "LEFT" || dir == "RIGHT")
					checkPath = false;
			case 13:
				if (dir == "UP" || dir == "DOWN" || dir == "RIGHT")
					checkPath = false;
			case 14:
				if (dir == "UP" || dir == "DOWN" || dir == "LEFT")
					checkPath = false;
			case 15:
				if (dir == "UP" || dir == "DOWN" || dir == "LEFT" || dir == "RIGHT")
					checkPath = false;
		}
		
		if (!moving && moveDis <= 0)
		{
			if (checkPath && checkNPC(dir))
			{
				moveDir = dir;
				moving = true;
				moveDis = 16;
				
				switch (dir)
				{
					case "UP":
						animation.play("UP_WALK");
					case "DOWN":
						animation.play("DOWN_WALK");
					case "LEFT":
						animation.play("LEFT_WALK");
					case "RIGHT":
						animation.play("RIGHT_WALK");
				}
			}
			else
			{
				look(dir);
			}
		}
	}
	
	public function getNextTile(dir:String):Point
	{
		var next:Point = new Point();
		next.x = x;
		next.y = y;
		
		switch (dir)
		{
			case "UP":
				next.y -= 16;
			case "DOWN":
				next.y += 16;
			case "LEFT":
				next.x -= 16;
			case "RIGHT":
				next.x += 16;
		}
		return next;
	}
	
	public function checkNPC(dir:String):Bool
	{
		var i:Int;
		for (i in 0...PlayState.characterList.length)
		{
			if (getNextTile(dir).x == PlayState.characterList[i].x &&
				getNextTile(dir).y == PlayState.characterList[i].y &&
				PlayState.characterList[i].enable)
				return false;
		}
		return true;
	}
	
	public function getNPC(dir:String):Character
	{
		var i:Int;
		for (i in 0...PlayState.characterList.length)
		{
			if (getNextTile(dir).x == PlayState.characterList[i].x &&
				getNextTile(dir).y == PlayState.characterList[i].y)
				return PlayState.characterList[i];
		}
		return null;
	}
	
	override public function update():Void
	{
		this.visible = this.enable;
		
		if (!moving)
		{
			look(moveDir);
		}
		else
		{
			if (moveDis > 0)
			{
				moveDis -= speed;
				switch (moveDir)
				{
					case "UP":
						y -= speed;
					case "DOWN":
						y += speed;
					case "LEFT":
						x -= speed;
					case "RIGHT":
						x += speed;
				}
			}
			else
			{
				moving = false;
			}
		}
		super.update();
	}
}
