package;

import flixel.addons.editors.tiled.TiledLayer;
import flixel.addons.editors.tiled.TiledTileLayer;
import flixel.addons.editors.tiled.TiledObjectLayer;
import flixel.FlxG;
import flixel.addons.editors.tiled.TiledMap;
import flixel.FlxObject;
import flixel.group.FlxGroup;
import flixel.tile.FlxTilemap;
import haxe.io.Path;

class TiledLevel extends TiledMap
{
	public var doors:FlxTypedGroup<Door> = new FlxTypedGroup<Door>();

	public var background:FlxTilemap;
	public var foreground:FlxTilemap;
	public var blockedtiles:FlxTilemap;
	
	private var tileSize:Int;
	private var mapWidth:Int;
	private var mapHeight:Int;
	
	public function new(Data:Dynamic):Void
	{
		super(Data);
		
		tileSize = tileWidth;
		mapWidth = width;
		mapHeight = height;

		for (layer in layers)
		{
			// There are two ways to load layer data:
            // 1) If the TMX is saved in CSV format, then use this:
            // var layerData:String = layer.csvData;
 
            // 2) If the TMX is saved in base64, then use this:
            // (we shall assume our TMX is base64 format for now)
            if (layer.type == TiledLayerType.TILE)
            {
            	var layerData:TiledTileLayer = cast layer;
				
				var tilesetName:String = layer.properties.get('tileset');
				var tilesetPath:String = "assets/images/" + tilesetName;
				var tileGID:Int = getStartGid(tilesetName);
				
				var level:FlxTilemap = new FlxTilemap();
				
				level.loadMapFromArray(layerData.tileArray, width, height, tilesetPath, tileSize, tileSize, OFF, tileGID, 1, 1);
				
				switch (layer.name)
				{
					case 'background':
						background = level;
					case 'foreground':
						foreground = level;
					case 'blockedtiles':
						blockedtiles = level;
				}
            }
            if (layer.type == TiledLayerType.OBJECT)
            {
            	var objectData:TiledObjectLayer = cast layer;

				for (object in objectData.objects)
				{
					var door:Door = new Door(object.x, object.y, object.properties.map, Std.parseInt(object.properties.posX), Std.parseInt(object.properties.posY));
					doors.add(door);
				}
            }
		}
	}
	
	private function getStartGid(tilesetName:String):Int
	{
		var tileGID:Int = 1;
		
		for (tileset in tilesets)
		{
			var tilesetPath:Path = new Path(tileset.imageSource);
            var thisTilesetName:String = tilesetPath.file + "." + tilesetPath.ext;
            if (thisTilesetName == tilesetName)
            {
                tileGID = tileset.firstGID;
            }
		}
		
		return tileGID;
	}
	
	public function collide(object:FlxObject):Bool
	{
		return FlxG.collide(object, blockedtiles);
	}
}