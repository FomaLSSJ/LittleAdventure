package;

import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.util.FlxSave;

import net.Network;
import net.Client;

import hud.GUI;

import map.TiledLevel;

import instances.Character;

import storage.Inventory;
import storage.Item;

import utils.Helper;

class Reg
{
	public static var current:String = "";
	public static var levels:Map<String,Dynamic> = new Map();
	public static var level:TiledLevel = null;
	public static var charactersMap:Map<String, Character> = new Map();

	public static var scores:Array<Dynamic> = [];
	public static var score:Int = 0;
	public static var save:FlxSave = new FlxSave();

	public static var host:String = "127.0.0.1";
	public static var port:Int = 443;
	public static var client: Client = new Client();
	public static var network: Network = new Network();
	public static var name:String = "__NAME__";
	public static var timer:Dynamic = { offset: 0.0, current: 0.0 };
	public static var image:String = "images/char.png";

	public static var gui:GUI = new GUI();
	
	public static var inv:Inventory = new Inventory();
	public static var itemsList:Map<String, Item> = new Map<String, Item>();
	public static var helper:Helper = new Helper();
	
	public static var charactersGroup:FlxTypedGroup<Character> = new FlxTypedGroup();
	public static var charactersTempData:Map<String, Dynamic> = new Map();
	
	public static var triggers:Map<String, Dynamic> = [
		"is_dialog"   	=> false,
		"is_inventory"	=> false,
		"select"		=> {"x": 0, "y": 0}
	];
}
