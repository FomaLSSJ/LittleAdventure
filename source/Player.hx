package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

enum MoveDirection
{
	UP;
	DOWN;
	LEFT;
	RIGHT;
}

class Player extends FlxSprite
{
	private static inline var TILE_SIZE:Int = 16;
	private static inline var MOVEMENT_SPEED:Int = 1;
	private static inline var ANIMATION_SPEED:Int = 2;
	
	private var moveDirection:MoveDirection;
	
	public var moveToNextTile:Bool;
	
	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:Dynamic):Void
	{
		super(X, Y);
		
		if (SimpleGraphic)
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
		
		if (moveToNextTile)
		{
			switch (moveDirection)
			{
				case UP:
					y -= MOVEMENT_SPEED;
				case DOWN:
					y += MOVEMENT_SPEED;
				case LEFT:
					x -= MOVEMENT_SPEED;
				case RIGHT:
					x += MOVEMENT_SPEED;
			}
		}
		
		if ((x % TILE_SIZE == 0) && (y % TILE_SIZE == 0))
		{
			moveToNextTile = false;
		}
		
		if (FlxG.keys.anyPressed(["UP", "W"]))
		{
			moveTo(MoveDirection.UP);
		}
		else if (FlxG.keys.anyPressed(["DOWN","S"]))
		{
			moveTo(MoveDirection.DOWN);
		}
		else if (FlxG.keys.anyPressed(["LEFT", "A"]))
		{
			moveTo(MoveDirection.LEFT);
		}
		else if (FlxG.keys.anyPressed(["RIGHT", "D"]))
		{
			moveTo(MoveDirection.RIGHT);
		}
	}
	
	public function moveTo(Direction:MoveDirection):Void
	{
		if (!moveToNextTile)
		{
			moveDirection = Direction;
			moveToNextTile = true;
			animation.play(moveDirection + "_WALK");
		}
	}
}