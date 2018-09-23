package storage;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

class Item extends FlxSprite
{
	public var name:String;
	public var multiple:Bool;
	public var count:Int;
	public var scriptIndex:Int = 0;
	public var script:Array<Map<String,Dynamic>>;
	
	public function new(Name:String, ?Multiple = false, ?Count = 1, ?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset):Void
	{
		super(0, 0, SimpleGraphic);
		
		name = Name;
		count = Count;
		multiple = Multiple;
	}
	
	public function setScript(Script:Array<Map<String, Dynamic>>):Void
	{
		script = Script;
	}
	
	public function startScript():Void
	{
		if (script == null)
		{
			trace("script empty");
			return;
		}
		
		if (!Reg.gui.isActiveDialog())
		{
			Reg.gui.toggleDialog();
		}
		
		if (scriptIndex >= script.length)
		{
			Reg.gui.toggleDialog();
			
			scriptIndex = 0;
		}
		else
		{
			var stack:Map<String,Dynamic> = this.script[ scriptIndex ];
			
			trace("Index:" + scriptIndex);
			
			switch (stack.get("key"))
			{
				default:
					Reg.gui.setText(stack.get("data"));
					scriptIndex++;
			}
		}
	}
}