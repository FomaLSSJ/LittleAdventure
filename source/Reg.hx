package;

import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.util.FlxSave;

class Reg
{
	public static var debugger:Bool = false;

	public static var current:String = "";
	public static var levels:Map<String,Dynamic> = new Map();
	public static var level:TiledLevel = null;
	public static var charactersMap:Map<String, Character> = new Map();

	public static var scores:Array<Dynamic> = [];
	public static var score:Int = 0;
	public static var saves:Array<FlxSave> = [];

	public static var server:String = "https://nodejs-api-fomalssj.c9users.io";
	public static var request:Request = new Request();
	public static var name:String = "__NAME__";
	public static var image:String = "images/char.png";

	public static var gui:GUI = new GUI();
	
	public static var inv:Inventory = new Inventory();
	public static var itemsList:Map<String,Item> = new Map<String,Item>();
	public static var helper:Helper = new Helper();
	
	public static var isDialog:Bool = false;
}
