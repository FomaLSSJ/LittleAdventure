package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.util.FlxColor;
import flixel.math.FlxPoint;
import flixel.FlxObject;

class Player extends FlxSprite
{
	private static inline var TILE_SIZE:Int = 16;
	private static inline var MOVEMENT_SPEED:Int = 1;
	private static inline var ANIMATION_SPEED:Int = 2;

	public var moveToNextTile:Bool;
	public var moveToDoor:Bool;

	public var executeCharacter:Character;

	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:Dynamic):Void
	{
		super(X, Y);

		this.facing = FlxObject.DOWN;
		
		if (SimpleGraphic != null)
		{
			loadGraphic(SimpleGraphic, true, TILE_SIZE, TILE_SIZE);

			animation.add("DOWN_IDLE", [0]);
			animation.add("UP_IDLE", [3]);
			animation.add("LEFT_IDLE", [6]);
			animation.add("RIGHT_IDLE", [9]);

			animation.add("DOWN_WALK", [1, 2], ANIMATION_SPEED);
			animation.add("UP_WALK", [4, 5], ANIMATION_SPEED);
			animation.add("LEFT_WALK", [7, 8], ANIMATION_SPEED);
			animation.add("RIGHT_WALK", [10, 11], ANIMATION_SPEED);

			animation.play("DOWN_WALK");
		}
		else
		{
			makeGraphic(TILE_SIZE, TILE_SIZE, FlxColor.BLUE);
		}
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		if (!Reg.gui.isActive())
		{
			movement();
		}
		
		if (!Reg.triggers.get('is_inventory'))
		{
			use();
		}

		if (!Reg.triggers.get('is_dialog') && !moveToNextTile)
		{
			inventory();
		}
	}

	private function use():Void
	{
		if (FlxG.keys.anyJustPressed(["SPACE", "Z"]))
		{
			if (!Reg.gui.isActive())
			{
				checkCharacters();
			}
			else
			{
				executeCharacter.startDialog();
			}
		}
	}
	
	private function inventory():Void
	{
		if (FlxG.keys.justPressed.X)
		{
			Reg.gui.toggleInventory();
		}
		
		if (FlxG.keys.justPressed.RIGHT)
		{
			Reg.inv.moveSelector(RIGHT);
		}
		
		if (FlxG.keys.justPressed.LEFT)
		{
			Reg.inv.moveSelector(LEFT);
		}
	}
	
	private function movement():Void
	{
		if (moveToNextTile)
		{
			switch (this.facing)
			{
				case FlxObject.UP:
					y -= MOVEMENT_SPEED;
				case FlxObject.DOWN:
					y += MOVEMENT_SPEED;
				case FlxObject.LEFT:
					x -= MOVEMENT_SPEED;
				case FlxObject.RIGHT:
					x += MOVEMENT_SPEED;
			}
		}

		if ((x % TILE_SIZE == 0) && (y % TILE_SIZE == 0))
		{
			moveToNextTile = false;
		}

		if (FlxG.keys.anyPressed(["UP", "W"]))
		{
			moveTo(FlxObject.UP);
		}
		else if (FlxG.keys.anyPressed(["DOWN","S"]))
		{
			moveTo(FlxObject.DOWN);
		}
		else if (FlxG.keys.anyPressed(["LEFT", "A"]))
		{
			moveTo(FlxObject.LEFT);
		}
		else if (FlxG.keys.anyPressed(["RIGHT", "D"]))
		{
			moveTo(FlxObject.RIGHT);
		}
	}

	public function moveTo(direction:Int):Void
	{
		if (!moveToNextTile)
		{
			this.facing = direction;
			moveToNextTile = true;
			moveToDoor = false;
			switch (this.facing)
			{
				case FlxObject.UP:
					animation.play("UP_WALK");
				case FlxObject.DOWN:
					animation.play("DOWN_WALK");
				case FlxObject.LEFT:
					animation.play("LEFT_WALK");
				case FlxObject.RIGHT:
					animation.play("RIGHT_WALK");
			}
		}
	}

	public function collideCharacters(p:Player, c:Character):Void
	{
		p.moveToNextTile = false;
	}

	public function checkCharacters():Void
	{
		for (character in Reg.charactersMap)
		{
			var nextTile:FlxPoint = checkNextTile();
			
			if (character.x == nextTile.x && character.y == nextTile.y)
			{
				executeCharacter = character;
				executeCharacter.execute(this);
				
				executeCharacter.startDialog();
			}
		}
	}

	public function checkNextTile():FlxPoint
	{
		var next:FlxPoint = new FlxPoint();
		next.x = x;
		next.y = y;

		switch (this.facing)
		{
			case FlxObject.UP:
				next.y -= TILE_SIZE;
			case FlxObject.DOWN:
				next.y += TILE_SIZE;
			case FlxObject.LEFT:
				next.x -= TILE_SIZE;
			case FlxObject.RIGHT:
				next.x += TILE_SIZE;
		}

		return next;
	}

	public function getDirection():Int
	{
		return this.facing;
	}
}
