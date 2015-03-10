package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Preloader;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Font;
import lime.graphics.Image;
import lime.utils.ByteArray;
import lime.utils.UInt8Array;
import lime.Assets;

#if (sys || nodejs)
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		className.set ("assets/data/global.oel", __ASSET__assets_data_global_oel);
		type.set ("assets/data/global.oel", AssetType.TEXT);
		className.set ("assets/data/global.oep", __ASSET__assets_data_global_oep);
		type.set ("assets/data/global.oep", AssetType.TEXT);
		className.set ("assets/data/home1f.oel", __ASSET__assets_data_home1f_oel);
		type.set ("assets/data/home1f.oel", AssetType.TEXT);
		className.set ("assets/data/home2f.oel", __ASSET__assets_data_home2f_oel);
		type.set ("assets/data/home2f.oel", AssetType.TEXT);
		className.set ("assets/data/market.oel", __ASSET__assets_data_market_oel);
		type.set ("assets/data/market.oel", AssetType.TEXT);
		className.set ("assets/images/basictiles.png", __ASSET__assets_images_basictiles_png);
		type.set ("assets/images/basictiles.png", AssetType.IMAGE);
		className.set ("assets/images/beachgirl.png", __ASSET__assets_images_beachgirl_png);
		type.set ("assets/images/beachgirl.png", AssetType.IMAGE);
		className.set ("assets/images/boots.png", __ASSET__assets_images_boots_png);
		type.set ("assets/images/boots.png", AssetType.IMAGE);
		className.set ("assets/images/bsod.png", __ASSET__assets_images_bsod_png);
		type.set ("assets/images/bsod.png", AssetType.IMAGE);
		className.set ("assets/images/can.png", __ASSET__assets_images_can_png);
		type.set ("assets/images/can.png", AssetType.IMAGE);
		className.set ("assets/images/char.png", __ASSET__assets_images_char_png);
		type.set ("assets/images/char.png", AssetType.IMAGE);
		className.set ("assets/images/dirblock.png", __ASSET__assets_images_dirblock_png);
		type.set ("assets/images/dirblock.png", AssetType.IMAGE);
		className.set ("assets/images/diskette (1).png", __ASSET__assets_images_diskette__1__png);
		type.set ("assets/images/diskette (1).png", AssetType.IMAGE);
		className.set ("assets/images/diskette.png", __ASSET__assets_images_diskette_png);
		type.set ("assets/images/diskette.png", AssetType.IMAGE);
		className.set ("assets/images/earth.png", __ASSET__assets_images_earth_png);
		type.set ("assets/images/earth.png", AssetType.IMAGE);
		className.set ("assets/images/floppyBeachgirl.png", __ASSET__assets_images_floppybeachgirl_png);
		type.set ("assets/images/floppyBeachgirl.png", AssetType.IMAGE);
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		className.set ("assets/images/letter.png", __ASSET__assets_images_letter_png);
		type.set ("assets/images/letter.png", AssetType.IMAGE);
		className.set ("assets/images/letterPhoto.png", __ASSET__assets_images_letterphoto_png);
		type.set ("assets/images/letterPhoto.png", AssetType.IMAGE);
		className.set ("assets/images/merchant.png", __ASSET__assets_images_merchant_png);
		type.set ("assets/images/merchant.png", AssetType.IMAGE);
		className.set ("assets/images/pencil.png", __ASSET__assets_images_pencil_png);
		type.set ("assets/images/pencil.png", AssetType.IMAGE);
		className.set ("assets/images/photo.png", __ASSET__assets_images_photo_png);
		type.set ("assets/images/photo.png", AssetType.IMAGE);
		className.set ("assets/images/photoAss.png", __ASSET__assets_images_photoass_png);
		type.set ("assets/images/photoAss.png", AssetType.IMAGE);
		className.set ("assets/images/photoPussy.png", __ASSET__assets_images_photopussy_png);
		type.set ("assets/images/photoPussy.png", AssetType.IMAGE);
		className.set ("assets/images/photoTits.png", __ASSET__assets_images_phototits_png);
		type.set ("assets/images/photoTits.png", AssetType.IMAGE);
		className.set ("assets/images/select.png", __ASSET__assets_images_select_png);
		type.set ("assets/images/select.png", AssetType.IMAGE);
		className.set ("assets/images/sky.png", __ASSET__assets_images_sky_png);
		type.set ("assets/images/sky.png", AssetType.IMAGE);
		className.set ("assets/images/uptiles.png", __ASSET__assets_images_uptiles_png);
		type.set ("assets/images/uptiles.png", AssetType.IMAGE);
		className.set ("assets/images/watcher.png", __ASSET__assets_images_watcher_png);
		type.set ("assets/images/watcher.png", AssetType.IMAGE);
		className.set ("assets/music/europe_the_final_countdown_8-bit.mp3", __ASSET__assets_music_europe_the_final_countdown_8_bit_mp3);
		type.set ("assets/music/europe_the_final_countdown_8-bit.mp3", AssetType.MUSIC);
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		className.set ("assets/sounds/beep.mp3", __ASSET__assets_sounds_beep_mp3);
		type.set ("assets/sounds/beep.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/flixel.mp3", __ASSET__assets_sounds_flixel_mp3);
		type.set ("assets/sounds/flixel.mp3", AssetType.MUSIC);
		
		
		#elseif html5
		
		var id;
		id = "assets/data/data-goes-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/global.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/global.oep";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/home1f.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/home2f.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/market.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/images/basictiles.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/beachgirl.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/boots.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/bsod.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/can.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/char.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/dirblock.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/diskette (1).png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/diskette.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/earth.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/floppyBeachgirl.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/images-go-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/images/letter.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/letterPhoto.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/merchant.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pencil.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/photo.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/photoAss.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/photoPussy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/photoTits.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/select.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/sky.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/uptiles.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/watcher.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/music/europe_the_final_countdown_8-bit.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/music/music-goes-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/sounds-go-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/beep.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/flixel.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		
		
		#else
		
		#if openfl
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		#end
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		
		className.set ("assets/data/global.oel", __ASSET__assets_data_global_oel);
		type.set ("assets/data/global.oel", AssetType.TEXT);
		
		className.set ("assets/data/global.oep", __ASSET__assets_data_global_oep);
		type.set ("assets/data/global.oep", AssetType.TEXT);
		
		className.set ("assets/data/home1f.oel", __ASSET__assets_data_home1f_oel);
		type.set ("assets/data/home1f.oel", AssetType.TEXT);
		
		className.set ("assets/data/home2f.oel", __ASSET__assets_data_home2f_oel);
		type.set ("assets/data/home2f.oel", AssetType.TEXT);
		
		className.set ("assets/data/market.oel", __ASSET__assets_data_market_oel);
		type.set ("assets/data/market.oel", AssetType.TEXT);
		
		className.set ("assets/images/basictiles.png", __ASSET__assets_images_basictiles_png);
		type.set ("assets/images/basictiles.png", AssetType.IMAGE);
		
		className.set ("assets/images/beachgirl.png", __ASSET__assets_images_beachgirl_png);
		type.set ("assets/images/beachgirl.png", AssetType.IMAGE);
		
		className.set ("assets/images/boots.png", __ASSET__assets_images_boots_png);
		type.set ("assets/images/boots.png", AssetType.IMAGE);
		
		className.set ("assets/images/bsod.png", __ASSET__assets_images_bsod_png);
		type.set ("assets/images/bsod.png", AssetType.IMAGE);
		
		className.set ("assets/images/can.png", __ASSET__assets_images_can_png);
		type.set ("assets/images/can.png", AssetType.IMAGE);
		
		className.set ("assets/images/char.png", __ASSET__assets_images_char_png);
		type.set ("assets/images/char.png", AssetType.IMAGE);
		
		className.set ("assets/images/dirblock.png", __ASSET__assets_images_dirblock_png);
		type.set ("assets/images/dirblock.png", AssetType.IMAGE);
		
		className.set ("assets/images/diskette (1).png", __ASSET__assets_images_diskette__1__png);
		type.set ("assets/images/diskette (1).png", AssetType.IMAGE);
		
		className.set ("assets/images/diskette.png", __ASSET__assets_images_diskette_png);
		type.set ("assets/images/diskette.png", AssetType.IMAGE);
		
		className.set ("assets/images/earth.png", __ASSET__assets_images_earth_png);
		type.set ("assets/images/earth.png", AssetType.IMAGE);
		
		className.set ("assets/images/floppyBeachgirl.png", __ASSET__assets_images_floppybeachgirl_png);
		type.set ("assets/images/floppyBeachgirl.png", AssetType.IMAGE);
		
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		
		className.set ("assets/images/letter.png", __ASSET__assets_images_letter_png);
		type.set ("assets/images/letter.png", AssetType.IMAGE);
		
		className.set ("assets/images/letterPhoto.png", __ASSET__assets_images_letterphoto_png);
		type.set ("assets/images/letterPhoto.png", AssetType.IMAGE);
		
		className.set ("assets/images/merchant.png", __ASSET__assets_images_merchant_png);
		type.set ("assets/images/merchant.png", AssetType.IMAGE);
		
		className.set ("assets/images/pencil.png", __ASSET__assets_images_pencil_png);
		type.set ("assets/images/pencil.png", AssetType.IMAGE);
		
		className.set ("assets/images/photo.png", __ASSET__assets_images_photo_png);
		type.set ("assets/images/photo.png", AssetType.IMAGE);
		
		className.set ("assets/images/photoAss.png", __ASSET__assets_images_photoass_png);
		type.set ("assets/images/photoAss.png", AssetType.IMAGE);
		
		className.set ("assets/images/photoPussy.png", __ASSET__assets_images_photopussy_png);
		type.set ("assets/images/photoPussy.png", AssetType.IMAGE);
		
		className.set ("assets/images/photoTits.png", __ASSET__assets_images_phototits_png);
		type.set ("assets/images/photoTits.png", AssetType.IMAGE);
		
		className.set ("assets/images/select.png", __ASSET__assets_images_select_png);
		type.set ("assets/images/select.png", AssetType.IMAGE);
		
		className.set ("assets/images/sky.png", __ASSET__assets_images_sky_png);
		type.set ("assets/images/sky.png", AssetType.IMAGE);
		
		className.set ("assets/images/uptiles.png", __ASSET__assets_images_uptiles_png);
		type.set ("assets/images/uptiles.png", AssetType.IMAGE);
		
		className.set ("assets/images/watcher.png", __ASSET__assets_images_watcher_png);
		type.set ("assets/images/watcher.png", AssetType.IMAGE);
		
		className.set ("assets/music/europe_the_final_countdown_8-bit.mp3", __ASSET__assets_music_europe_the_final_countdown_8_bit_mp3);
		type.set ("assets/music/europe_the_final_countdown_8-bit.mp3", AssetType.MUSIC);
		
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		
		className.set ("assets/sounds/beep.mp3", __ASSET__assets_sounds_beep_mp3);
		type.set ("assets/sounds/beep.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/flixel.mp3", __ASSET__assets_sounds_flixel_mp3);
		type.set ("assets/sounds/flixel.mp3", AssetType.MUSIC);
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						if (eventCallback != null) {
							
							eventCallback (this, "change");
							
						}
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && requestedType == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return AudioBuffer.fromFile (path.get (id));
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif html5
		
		var bytes:ByteArray = null;
		var data = Preloader.loaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), ByteArray);
		else return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Dynamic /*Font*/ {
		
		// TODO: Complete Lime Font API
		
		#if openfl
		#if (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), openfl.text.Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			openfl.text.Font.registerFont (fontClass);
			return cast (Type.createInstance (fontClass, []), openfl.text.Font);
			
		} else {
			
			return new openfl.text.Font (path.get (id));
			
		}
		
		#end
		#end
		
		return null;
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		return Image.fromFile (path.get (id));
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var bytes:ByteArray = null;
		var data = Preloader.loaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			return cast data;
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes.readUTFBytes (bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String, handler:AudioBuffer -> Void):Void {
		
		#if (flash || js)
		
		//if (path.exists (id)) {
			
		//	var loader = new Loader ();
		//	loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
		//		handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
		//	});
		//	loader.load (new URLRequest (path.get (id)));
			
		//} else {
			
			handler (getAudioBuffer (id));
			
		//}
		
		#else
		
		handler (getAudioBuffer (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadImage (id:String, handler:Image -> Void):Void {
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				handler (Image.fromBitmapData (bitmapData));
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getImage (id));
			
		}
		
		#else
		
		handler (getImage (id));
		
		#end
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = ByteArray.readFile ("../Resources/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								path.set (asset.id, asset.path);
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	/*public override function loadMusic (id:String, handler:Dynamic -> Void):Void {
		
		#if (flash || js)
		
		//if (path.exists (id)) {
			
		//	var loader = new Loader ();
		//	loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
		//		handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
		//	});
		//	loader.load (new URLRequest (path.get (id)));
			
		//} else {
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}*/
	
	
	public override function loadText (id:String, handler:String -> Void):Void {
		
		//#if html5
		
		/*if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (event.currentTarget.data);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getText (id));
			
		}*/
		
		//#else
		
		var callback = function (bytes:ByteArray):Void {
			
			if (bytes == null) {
				
				handler (null);
				
			} else {
				
				handler (bytes.readUTFBytes (bytes.length));
				
			}
			
		}
		
		loadBytes (id, callback);
		
		//#end
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_data_data_goes_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_global_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_global_oep extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_home1f_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_home2f_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_market_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_basictiles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_beachgirl_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_boots_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_bsod_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_can_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_char_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_dirblock_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_diskette__1__png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_diskette_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_earth_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_floppybeachgirl_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_images_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_letter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_letterphoto_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_merchant_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pencil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_photo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_photoass_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_photopussy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_phototits_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_select_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_uptiles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_watcher_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_music_europe_the_final_countdown_8_bit_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_beep_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_flixel_mp3 extends flash.media.Sound { }


#elseif html5

#if openfl




































#end

#else

#if openfl

#end

#if (windows || mac || linux)


@:file("assets/data/data-goes-here.txt") class __ASSET__assets_data_data_goes_here_txt extends lime.utils.ByteArray {}
@:file("assets/data/global.oel") class __ASSET__assets_data_global_oel extends lime.utils.ByteArray {}
@:file("assets/data/global.oep") class __ASSET__assets_data_global_oep extends lime.utils.ByteArray {}
@:file("assets/data/home1f.oel") class __ASSET__assets_data_home1f_oel extends lime.utils.ByteArray {}
@:file("assets/data/home2f.oel") class __ASSET__assets_data_home2f_oel extends lime.utils.ByteArray {}
@:file("assets/data/market.oel") class __ASSET__assets_data_market_oel extends lime.utils.ByteArray {}
@:bitmap("assets/images/basictiles.png") class __ASSET__assets_images_basictiles_png extends lime.graphics.Image {}
@:bitmap("assets/images/beachgirl.png") class __ASSET__assets_images_beachgirl_png extends lime.graphics.Image {}
@:bitmap("assets/images/boots.png") class __ASSET__assets_images_boots_png extends lime.graphics.Image {}
@:bitmap("assets/images/bsod.png") class __ASSET__assets_images_bsod_png extends lime.graphics.Image {}
@:bitmap("assets/images/can.png") class __ASSET__assets_images_can_png extends lime.graphics.Image {}
@:bitmap("assets/images/char.png") class __ASSET__assets_images_char_png extends lime.graphics.Image {}
@:bitmap("assets/images/dirblock.png") class __ASSET__assets_images_dirblock_png extends lime.graphics.Image {}
@:bitmap("assets/images/diskette (1).png") class __ASSET__assets_images_diskette__1__png extends lime.graphics.Image {}
@:bitmap("assets/images/diskette.png") class __ASSET__assets_images_diskette_png extends lime.graphics.Image {}
@:bitmap("assets/images/earth.png") class __ASSET__assets_images_earth_png extends lime.graphics.Image {}
@:bitmap("assets/images/floppyBeachgirl.png") class __ASSET__assets_images_floppybeachgirl_png extends lime.graphics.Image {}
@:file("assets/images/images-go-here.txt") class __ASSET__assets_images_images_go_here_txt extends lime.utils.ByteArray {}
@:bitmap("assets/images/letter.png") class __ASSET__assets_images_letter_png extends lime.graphics.Image {}
@:bitmap("assets/images/letterPhoto.png") class __ASSET__assets_images_letterphoto_png extends lime.graphics.Image {}
@:bitmap("assets/images/merchant.png") class __ASSET__assets_images_merchant_png extends lime.graphics.Image {}
@:bitmap("assets/images/pencil.png") class __ASSET__assets_images_pencil_png extends lime.graphics.Image {}
@:bitmap("assets/images/photo.png") class __ASSET__assets_images_photo_png extends lime.graphics.Image {}
@:bitmap("assets/images/photoAss.png") class __ASSET__assets_images_photoass_png extends lime.graphics.Image {}
@:bitmap("assets/images/photoPussy.png") class __ASSET__assets_images_photopussy_png extends lime.graphics.Image {}
@:bitmap("assets/images/photoTits.png") class __ASSET__assets_images_phototits_png extends lime.graphics.Image {}
@:bitmap("assets/images/select.png") class __ASSET__assets_images_select_png extends lime.graphics.Image {}
@:bitmap("assets/images/sky.png") class __ASSET__assets_images_sky_png extends lime.graphics.Image {}
@:bitmap("assets/images/uptiles.png") class __ASSET__assets_images_uptiles_png extends lime.graphics.Image {}
@:bitmap("assets/images/watcher.png") class __ASSET__assets_images_watcher_png extends lime.graphics.Image {}
@:sound("assets/music/europe_the_final_countdown_8-bit.mp3") class __ASSET__assets_music_europe_the_final_countdown_8_bit_mp3 extends lime.audio.AudioSource {}
@:file("assets/music/music-goes-here.txt") class __ASSET__assets_music_music_goes_here_txt extends lime.utils.ByteArray {}
@:file("assets/sounds/sounds-go-here.txt") class __ASSET__assets_sounds_sounds_go_here_txt extends lime.utils.ByteArray {}
@:sound("E:/SDK/Stencyl/plaf/haxe/lib/flixel/3,3,6/assets/sounds/beep.mp3") class __ASSET__assets_sounds_beep_mp3 extends lime.audio.AudioSource {}
@:sound("E:/SDK/Stencyl/plaf/haxe/lib/flixel/3,3,6/assets/sounds/flixel.mp3") class __ASSET__assets_sounds_flixel_mp3 extends lime.audio.AudioSource {}



#end

#end
#end

