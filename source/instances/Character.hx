package instances;

import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Character extends FlxSprite
{
	private static inline var TILE_SIZE:Int = 16;
	private static inline var MOVEMENT_SPEED:Int = 1;
	private static inline var ANIMATION_SPEED:Int = 2;

	public var id:String = "None";
	public var name:String = "__NAME__";
	public var dialogIndex:Int = 0;
	public var dialog:Array<Map<String,Dynamic>> = new Array<Map<String,Dynamic>>();
	
	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:Dynamic):Void
	{
		super(X, Y);

		immovable = true;
		facing = FlxObject.UP;

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
		this.facing = Direction;

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

	public function getDirection():Int
	{
		return this.facing;
	}
	
	public function startDialog():Void
	{
		if (!Reg.gui.isActive())
		{
			Reg.gui.toggleDialog();
		}
		
		if (this.dialogIndex >= this.dialog.length)
		{
			Reg.gui.toggleDialog();
			
			this.dialogIndex = 0;
		}
		else
		{
			var stack:Map<String,Dynamic> = this.dialog[this.dialogIndex];
			
			trace("Index:" + this.dialogIndex);
			
			switch (stack.get("key"))
			{
				case "string":
					Reg.gui.setText(stack.get("data"));
					this.dialogIndex++;
				case "function":
					var data = stack.get("data");
					
					Reflect.callMethod(Reg.helper, Reflect.field(Reg.helper, data.field), data.args);
					this.dialogIndex++;
					
					if (Reg.gui.isActive())
					{
						startDialog();
					}
				case "index":
					var data = stack.get("data");

					this.dialogIndex = Std.parseInt(data.index);
					
					if (Reg.gui.isActive())
					{
						startDialog();
					}
				case 'destroy':
					var data = stack.get("data");
					
					if (data.index != null)
					{
						this.dialogIndex = Std.parseInt(data.index);
					}
					
					Reg.gui.toggleDialog();
					Reg.triggers.set('is_dialog', false);
					
					Reg.charactersTempData.set('bro0001', {"id": "bro0001", "x": 208, "y": 96, "name": "Bro", "map": "home1f", "direction": 1});
					Reg.charactersGroup.remove(this, true);
					
					this.kill();
				default:
					//null
			}
		}
	}
}
