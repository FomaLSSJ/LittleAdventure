package ;

import flixel.FlxG;
import flixel.tile.FlxTilemap;
import flixel.util.FlxRect;
import haxe.xml.Fast;
import haxe.xml.Parser;
import openfl.Assets;

class OgmoLoader
{
	public var width:Int;
	public var height:Int;
	
	private var _xml:Xml;
	private var _fastXml:Fast;
	
	public function new(LevelData:Dynamic)
	{
		var str:String = "";
		
		if (Std.is(LevelData, Class)) 
		{
			str = Type.createInstance(LevelData, []);
		}
		else if (Std.is(LevelData, String))  
		{
			str = Assets.getText(LevelData);
		}
		
		_xml = Parser.parse(str);
		_fastXml = new Fast(_xml.firstElement());
		
		width = Std.parseInt(_fastXml.att.width);
		height = Std.parseInt(_fastXml.att.height);
		
		FlxG.camera.setBounds(0, 0, width, height, true);
	}
	
	public function loadTilemap(TileGraphic:Dynamic, TileWidth:Int = 16, TileHeight:Int = 16, TileLayer:String = "tiles"):FlxTilemap
	{
		var tileMap:FlxTilemap = new FlxTilemap();
		tileMap.loadMap(_fastXml.node.resolve(TileLayer).innerData, TileGraphic, TileWidth, TileHeight);
		
		return tileMap;
	}
	
	public function loadMapValue(ValueName:String):String
	{
		return _fastXml.att.resolve(ValueName);
	}
	
	public function loadEntities(EntityLoadCallback:String->Xml->Void, EntityLayer:String = "entities"):Void
	{
		var actors = _fastXml.node.resolve(EntityLayer);
		
		for (a in actors.elements) 
		{
			EntityLoadCallback(a.name, a.x);
		}
	}
	
	public function loadRectangles(RectLoadCallback:FlxRect->Void, RectLayer:String = "rectangles"):Void
	{
		var rects = _fastXml.node.resolve(RectLayer);
		
		for (r in rects.elements)
		{
			RectLoadCallback(FlxRect.get(Std.parseInt(r.x.get("x")), Std.parseInt(r.x.get("y")), Std.parseInt(r.x.get("w")), Std.parseInt(r.x.get("h"))));
		}
	}
}