package;

import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.util.FlxSave;

enum Direction
{
	UP;
	DOWN;
	LEFT;
	RIGHT;
}

class Reg
{
	public static var debugger:Bool = false;

	public static var current:String = "";
	public static var levels:Map<String,Dynamic> = new Map();
	public static var level:TiledLevel = null;
	public static var characters:FlxTypedGroup<Character> = new FlxTypedGroup<Character>();

	public static var scores:Array<Dynamic> = [];
	public static var score:Int = 0;
	public static var saves:Array<FlxSave> = [];

	public static var server:String = "https://nodejs-api-fomalssj.c9users.io";
	public static var request:Request = new Request();
	public static var name:String = "__NAME__";
	public static var image:String = "images/char.png";
}
