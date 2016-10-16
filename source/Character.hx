package;

import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Character extends FlxSprite {
	private static inline var TILE_SIZE:Int = 16;
	private static inline var MOVEMENT_SPEED:Int = 1;
	private static inline var ANIMATION_SPEED:Int = 2;

	private var direction:Int = FlxObject.DOWN;

	public var name:String = "__NAME__";
	public var dialogIndex:Int = 0;
	public var dialog:Array<Map<String,Dynamic>> = new Array<Map<String,Dynamic>>();

	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:Dynamic):Void
	{
		super(X, Y);

		immovable = true;

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
	}

	public function execute(executor:Dynamic):Void
	{
		setLook(executor.getDirection());

		if (Type.getClassName(Type.getClass(executor)) == "Player")
		{
			trace("Player executed script");
		}
	}

	public function setLook(Direction:Int):Void
	{
		switch (Direction)
		{
			case FlxObject.UP:
				animation.play("DOWN_WALK");
			case FlxObject.DOWN:
				animation.play("UP_WALK");
			case FlxObject.RIGHT:
				animation.play("LEFT_WALK");
			case FlxObject.LEFT:
				animation.play("RIGHT_WALK");
		}
	}

	public function startDialog():Void
	{
		//null
	}
}
