package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Future;
import lime.app.Preloader;
import lime.app.Promise;
import lime.audio.AudioSource;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Image;
import lime.net.HTTPRequest;
import lime.system.CFFI;
import lime.text.Font;
import lime.utils.Bytes;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
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
		
		#if (openfl && !flash)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		#end
		
		#if flash
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		className.set ("assets/data/global.oel", __ASSET__assets_data_global_oel);
		type.set ("assets/data/global.oel", AssetType.TEXT);
		className.set ("assets/data/global.oep", __ASSET__assets_data_global_oep);
		type.set ("assets/data/global.oep", AssetType.TEXT);
		className.set ("assets/data/global.tmx", __ASSET__assets_data_global_tmx);
		type.set ("assets/data/global.tmx", AssetType.TEXT);
		className.set ("assets/data/home1f.oel", __ASSET__assets_data_home1f_oel);
		type.set ("assets/data/home1f.oel", AssetType.TEXT);
		className.set ("assets/data/home1f.tmx", __ASSET__assets_data_home1f_tmx);
		type.set ("assets/data/home1f.tmx", AssetType.TEXT);
		className.set ("assets/data/home2f.oel", __ASSET__assets_data_home2f_oel);
		type.set ("assets/data/home2f.oel", AssetType.TEXT);
		className.set ("assets/data/market.oel", __ASSET__assets_data_market_oel);
		type.set ("assets/data/market.oel", AssetType.TEXT);
		className.set ("assets/data/market.tmx", __ASSET__assets_data_market_tmx);
		type.set ("assets/data/market.tmx", AssetType.TEXT);
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
		className.set ("assets/images/diskette.png", __ASSET__assets_images_diskette_png);
		type.set ("assets/images/diskette.png", AssetType.IMAGE);
		className.set ("assets/images/earth.png", __ASSET__assets_images_earth_png);
		type.set ("assets/images/earth.png", AssetType.IMAGE);
		className.set ("assets/images/glow-light.png", __ASSET__assets_images_glow_light_png);
		type.set ("assets/images/glow-light.png", AssetType.IMAGE);
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		className.set ("assets/images/letter.png", __ASSET__assets_images_letter_png);
		type.set ("assets/images/letter.png", AssetType.IMAGE);
		className.set ("assets/images/lighter.png", __ASSET__assets_images_lighter_png);
		type.set ("assets/images/lighter.png", AssetType.IMAGE);
		className.set ("assets/images/merchant.png", __ASSET__assets_images_merchant_png);
		type.set ("assets/images/merchant.png", AssetType.IMAGE);
		className.set ("assets/images/pencil.png", __ASSET__assets_images_pencil_png);
		type.set ("assets/images/pencil.png", AssetType.IMAGE);
		className.set ("assets/images/photo.png", __ASSET__assets_images_photo_png);
		type.set ("assets/images/photo.png", AssetType.IMAGE);
		className.set ("assets/images/select.png", __ASSET__assets_images_select_png);
		type.set ("assets/images/select.png", AssetType.IMAGE);
		className.set ("assets/images/sky.png", __ASSET__assets_images_sky_png);
		type.set ("assets/images/sky.png", AssetType.IMAGE);
		className.set ("assets/images/uptiles.png", __ASSET__assets_images_uptiles_png);
		type.set ("assets/images/uptiles.png", AssetType.IMAGE);
		className.set ("assets/images/watches.png", __ASSET__assets_images_watches_png);
		type.set ("assets/images/watches.png", AssetType.IMAGE);
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		className.set ("flixel/sounds/beep.mp3", __ASSET__flixel_sounds_beep_mp3);
		type.set ("flixel/sounds/beep.mp3", AssetType.MUSIC);
		className.set ("flixel/sounds/flixel.mp3", __ASSET__flixel_sounds_flixel_mp3);
		type.set ("flixel/sounds/flixel.mp3", AssetType.MUSIC);
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/box.png", __ASSET__flixel_flixel_ui_img_box_png);
		type.set ("flixel/flixel-ui/img/box.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/button.png", __ASSET__flixel_flixel_ui_img_button_png);
		type.set ("flixel/flixel-ui/img/button.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/button_arrow_down.png", __ASSET__flixel_flixel_ui_img_button_arrow_down_png);
		type.set ("flixel/flixel-ui/img/button_arrow_down.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/button_arrow_left.png", __ASSET__flixel_flixel_ui_img_button_arrow_left_png);
		type.set ("flixel/flixel-ui/img/button_arrow_left.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/button_arrow_right.png", __ASSET__flixel_flixel_ui_img_button_arrow_right_png);
		type.set ("flixel/flixel-ui/img/button_arrow_right.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/button_arrow_up.png", __ASSET__flixel_flixel_ui_img_button_arrow_up_png);
		type.set ("flixel/flixel-ui/img/button_arrow_up.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/button_thin.png", __ASSET__flixel_flixel_ui_img_button_thin_png);
		type.set ("flixel/flixel-ui/img/button_thin.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/button_toggle.png", __ASSET__flixel_flixel_ui_img_button_toggle_png);
		type.set ("flixel/flixel-ui/img/button_toggle.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/check_box.png", __ASSET__flixel_flixel_ui_img_check_box_png);
		type.set ("flixel/flixel-ui/img/check_box.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/check_mark.png", __ASSET__flixel_flixel_ui_img_check_mark_png);
		type.set ("flixel/flixel-ui/img/check_mark.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/chrome.png", __ASSET__flixel_flixel_ui_img_chrome_png);
		type.set ("flixel/flixel-ui/img/chrome.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/chrome_flat.png", __ASSET__flixel_flixel_ui_img_chrome_flat_png);
		type.set ("flixel/flixel-ui/img/chrome_flat.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/chrome_inset.png", __ASSET__flixel_flixel_ui_img_chrome_inset_png);
		type.set ("flixel/flixel-ui/img/chrome_inset.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/chrome_light.png", __ASSET__flixel_flixel_ui_img_chrome_light_png);
		type.set ("flixel/flixel-ui/img/chrome_light.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/dropdown_mark.png", __ASSET__flixel_flixel_ui_img_dropdown_mark_png);
		type.set ("flixel/flixel-ui/img/dropdown_mark.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/finger_big.png", __ASSET__flixel_flixel_ui_img_finger_big_png);
		type.set ("flixel/flixel-ui/img/finger_big.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/finger_small.png", __ASSET__flixel_flixel_ui_img_finger_small_png);
		type.set ("flixel/flixel-ui/img/finger_small.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/hilight.png", __ASSET__flixel_flixel_ui_img_hilight_png);
		type.set ("flixel/flixel-ui/img/hilight.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/invis.png", __ASSET__flixel_flixel_ui_img_invis_png);
		type.set ("flixel/flixel-ui/img/invis.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/minus_mark.png", __ASSET__flixel_flixel_ui_img_minus_mark_png);
		type.set ("flixel/flixel-ui/img/minus_mark.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/plus_mark.png", __ASSET__flixel_flixel_ui_img_plus_mark_png);
		type.set ("flixel/flixel-ui/img/plus_mark.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/radio.png", __ASSET__flixel_flixel_ui_img_radio_png);
		type.set ("flixel/flixel-ui/img/radio.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/radio_dot.png", __ASSET__flixel_flixel_ui_img_radio_dot_png);
		type.set ("flixel/flixel-ui/img/radio_dot.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/swatch.png", __ASSET__flixel_flixel_ui_img_swatch_png);
		type.set ("flixel/flixel-ui/img/swatch.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/tab.png", __ASSET__flixel_flixel_ui_img_tab_png);
		type.set ("flixel/flixel-ui/img/tab.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/tab_back.png", __ASSET__flixel_flixel_ui_img_tab_back_png);
		type.set ("flixel/flixel-ui/img/tab_back.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/img/tooltip_arrow.png", __ASSET__flixel_flixel_ui_img_tooltip_arrow_png);
		type.set ("flixel/flixel-ui/img/tooltip_arrow.png", AssetType.IMAGE);
		className.set ("flixel/flixel-ui/xml/defaults.xml", __ASSET__flixel_flixel_ui_xml_defaults_xml);
		type.set ("flixel/flixel-ui/xml/defaults.xml", AssetType.TEXT);
		className.set ("flixel/flixel-ui/xml/default_loading_screen.xml", __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml);
		type.set ("flixel/flixel-ui/xml/default_loading_screen.xml", AssetType.TEXT);
		className.set ("flixel/flixel-ui/xml/default_popup.xml", __ASSET__flixel_flixel_ui_xml_default_popup_xml);
		type.set ("flixel/flixel-ui/xml/default_popup.xml", AssetType.TEXT);
		
		
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
		id = "assets/data/global.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/home1f.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/home1f.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/home2f.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/market.oel";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/market.tmx";
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
		id = "assets/images/diskette.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/earth.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/glow-light.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/images-go-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/images/letter.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/lighter.png";
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
		id = "assets/images/select.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/sky.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/uptiles.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/watches.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/music/music-goes-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/sounds-go-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "flixel/sounds/beep.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "flixel/sounds/flixel.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "flixel/fonts/nokiafc22.ttf";
		className.set (id, __ASSET__flixel_fonts_nokiafc22_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/fonts/monsterrat.ttf";
		className.set (id, __ASSET__flixel_fonts_monsterrat_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/images/ui/button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/box.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/button_arrow_down.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/button_arrow_left.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/button_arrow_right.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/button_arrow_up.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/button_thin.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/button_toggle.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/check_box.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/check_mark.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/chrome.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/chrome_flat.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/chrome_inset.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/chrome_light.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/dropdown_mark.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/finger_big.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/finger_small.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/hilight.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/invis.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/minus_mark.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/plus_mark.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/radio.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/radio_dot.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/swatch.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/tab.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/tab_back.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/img/tooltip_arrow.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/flixel-ui/xml/defaults.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "flixel/flixel-ui/xml/default_loading_screen.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "flixel/flixel-ui/xml/default_popup.xml";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		
		
		var assetsPrefix = null;
		if (ApplicationMain.config != null && Reflect.hasField (ApplicationMain.config, "assetsPrefix")) {
			assetsPrefix = ApplicationMain.config.assetsPrefix;
		}
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		
		className.set ("assets/data/global.oel", __ASSET__assets_data_global_oel);
		type.set ("assets/data/global.oel", AssetType.TEXT);
		
		className.set ("assets/data/global.oep", __ASSET__assets_data_global_oep);
		type.set ("assets/data/global.oep", AssetType.TEXT);
		
		className.set ("assets/data/global.tmx", __ASSET__assets_data_global_tmx);
		type.set ("assets/data/global.tmx", AssetType.TEXT);
		
		className.set ("assets/data/home1f.oel", __ASSET__assets_data_home1f_oel);
		type.set ("assets/data/home1f.oel", AssetType.TEXT);
		
		className.set ("assets/data/home1f.tmx", __ASSET__assets_data_home1f_tmx);
		type.set ("assets/data/home1f.tmx", AssetType.TEXT);
		
		className.set ("assets/data/home2f.oel", __ASSET__assets_data_home2f_oel);
		type.set ("assets/data/home2f.oel", AssetType.TEXT);
		
		className.set ("assets/data/market.oel", __ASSET__assets_data_market_oel);
		type.set ("assets/data/market.oel", AssetType.TEXT);
		
		className.set ("assets/data/market.tmx", __ASSET__assets_data_market_tmx);
		type.set ("assets/data/market.tmx", AssetType.TEXT);
		
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
		
		className.set ("assets/images/diskette.png", __ASSET__assets_images_diskette_png);
		type.set ("assets/images/diskette.png", AssetType.IMAGE);
		
		className.set ("assets/images/earth.png", __ASSET__assets_images_earth_png);
		type.set ("assets/images/earth.png", AssetType.IMAGE);
		
		className.set ("assets/images/glow-light.png", __ASSET__assets_images_glow_light_png);
		type.set ("assets/images/glow-light.png", AssetType.IMAGE);
		
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		
		className.set ("assets/images/letter.png", __ASSET__assets_images_letter_png);
		type.set ("assets/images/letter.png", AssetType.IMAGE);
		
		className.set ("assets/images/lighter.png", __ASSET__assets_images_lighter_png);
		type.set ("assets/images/lighter.png", AssetType.IMAGE);
		
		className.set ("assets/images/merchant.png", __ASSET__assets_images_merchant_png);
		type.set ("assets/images/merchant.png", AssetType.IMAGE);
		
		className.set ("assets/images/pencil.png", __ASSET__assets_images_pencil_png);
		type.set ("assets/images/pencil.png", AssetType.IMAGE);
		
		className.set ("assets/images/photo.png", __ASSET__assets_images_photo_png);
		type.set ("assets/images/photo.png", AssetType.IMAGE);
		
		className.set ("assets/images/select.png", __ASSET__assets_images_select_png);
		type.set ("assets/images/select.png", AssetType.IMAGE);
		
		className.set ("assets/images/sky.png", __ASSET__assets_images_sky_png);
		type.set ("assets/images/sky.png", AssetType.IMAGE);
		
		className.set ("assets/images/uptiles.png", __ASSET__assets_images_uptiles_png);
		type.set ("assets/images/uptiles.png", AssetType.IMAGE);
		
		className.set ("assets/images/watches.png", __ASSET__assets_images_watches_png);
		type.set ("assets/images/watches.png", AssetType.IMAGE);
		
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		
		className.set ("flixel/sounds/beep.mp3", __ASSET__flixel_sounds_beep_mp3);
		type.set ("flixel/sounds/beep.mp3", AssetType.MUSIC);
		
		className.set ("flixel/sounds/flixel.mp3", __ASSET__flixel_sounds_flixel_mp3);
		type.set ("flixel/sounds/flixel.mp3", AssetType.MUSIC);
		
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/box.png", __ASSET__flixel_flixel_ui_img_box_png);
		type.set ("flixel/flixel-ui/img/box.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/button.png", __ASSET__flixel_flixel_ui_img_button_png);
		type.set ("flixel/flixel-ui/img/button.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/button_arrow_down.png", __ASSET__flixel_flixel_ui_img_button_arrow_down_png);
		type.set ("flixel/flixel-ui/img/button_arrow_down.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/button_arrow_left.png", __ASSET__flixel_flixel_ui_img_button_arrow_left_png);
		type.set ("flixel/flixel-ui/img/button_arrow_left.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/button_arrow_right.png", __ASSET__flixel_flixel_ui_img_button_arrow_right_png);
		type.set ("flixel/flixel-ui/img/button_arrow_right.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/button_arrow_up.png", __ASSET__flixel_flixel_ui_img_button_arrow_up_png);
		type.set ("flixel/flixel-ui/img/button_arrow_up.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/button_thin.png", __ASSET__flixel_flixel_ui_img_button_thin_png);
		type.set ("flixel/flixel-ui/img/button_thin.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/button_toggle.png", __ASSET__flixel_flixel_ui_img_button_toggle_png);
		type.set ("flixel/flixel-ui/img/button_toggle.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/check_box.png", __ASSET__flixel_flixel_ui_img_check_box_png);
		type.set ("flixel/flixel-ui/img/check_box.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/check_mark.png", __ASSET__flixel_flixel_ui_img_check_mark_png);
		type.set ("flixel/flixel-ui/img/check_mark.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/chrome.png", __ASSET__flixel_flixel_ui_img_chrome_png);
		type.set ("flixel/flixel-ui/img/chrome.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/chrome_flat.png", __ASSET__flixel_flixel_ui_img_chrome_flat_png);
		type.set ("flixel/flixel-ui/img/chrome_flat.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/chrome_inset.png", __ASSET__flixel_flixel_ui_img_chrome_inset_png);
		type.set ("flixel/flixel-ui/img/chrome_inset.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/chrome_light.png", __ASSET__flixel_flixel_ui_img_chrome_light_png);
		type.set ("flixel/flixel-ui/img/chrome_light.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/dropdown_mark.png", __ASSET__flixel_flixel_ui_img_dropdown_mark_png);
		type.set ("flixel/flixel-ui/img/dropdown_mark.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/finger_big.png", __ASSET__flixel_flixel_ui_img_finger_big_png);
		type.set ("flixel/flixel-ui/img/finger_big.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/finger_small.png", __ASSET__flixel_flixel_ui_img_finger_small_png);
		type.set ("flixel/flixel-ui/img/finger_small.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/hilight.png", __ASSET__flixel_flixel_ui_img_hilight_png);
		type.set ("flixel/flixel-ui/img/hilight.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/invis.png", __ASSET__flixel_flixel_ui_img_invis_png);
		type.set ("flixel/flixel-ui/img/invis.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/minus_mark.png", __ASSET__flixel_flixel_ui_img_minus_mark_png);
		type.set ("flixel/flixel-ui/img/minus_mark.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/plus_mark.png", __ASSET__flixel_flixel_ui_img_plus_mark_png);
		type.set ("flixel/flixel-ui/img/plus_mark.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/radio.png", __ASSET__flixel_flixel_ui_img_radio_png);
		type.set ("flixel/flixel-ui/img/radio.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/radio_dot.png", __ASSET__flixel_flixel_ui_img_radio_dot_png);
		type.set ("flixel/flixel-ui/img/radio_dot.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/swatch.png", __ASSET__flixel_flixel_ui_img_swatch_png);
		type.set ("flixel/flixel-ui/img/swatch.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/tab.png", __ASSET__flixel_flixel_ui_img_tab_png);
		type.set ("flixel/flixel-ui/img/tab.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/tab_back.png", __ASSET__flixel_flixel_ui_img_tab_back_png);
		type.set ("flixel/flixel-ui/img/tab_back.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/img/tooltip_arrow.png", __ASSET__flixel_flixel_ui_img_tooltip_arrow_png);
		type.set ("flixel/flixel-ui/img/tooltip_arrow.png", AssetType.IMAGE);
		
		className.set ("flixel/flixel-ui/xml/defaults.xml", __ASSET__flixel_flixel_ui_xml_defaults_xml);
		type.set ("flixel/flixel-ui/xml/defaults.xml", AssetType.TEXT);
		
		className.set ("flixel/flixel-ui/xml/default_loading_screen.xml", __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml);
		type.set ("flixel/flixel-ui/xml/default_loading_screen.xml", AssetType.TEXT);
		
		className.set ("flixel/flixel-ui/xml/default_popup.xml", __ASSET__flixel_flixel_ui_xml_default_popup_xml);
		type.set ("flixel/flixel-ui/xml/default_popup.xml", AssetType.TEXT);
		
		
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
						
						onChange.dispatch ();
						
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
			
			if (requestedType == BINARY && (assetType == BINARY || assetType == TEXT || assetType == IMAGE)) {
				
				return true;
				
			} else if (requestedType == TEXT && assetType == BINARY) {
				
				return true;
				
			} else if (requestedType == null || path.exists (id)) {
				
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
		
		if (className.exists(id)) return AudioBuffer.fromBytes (cast (Type.createInstance (className.get (id), []), Bytes));
		else return AudioBuffer.fromFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):Bytes {
		
		#if flash
		
		switch (type.get (id)) {
			
			case TEXT, BINARY:
				
				return Bytes.ofData (cast (Type.createInstance (className.get (id), []), flash.utils.ByteArray));
			
			case IMAGE:
				
				var bitmapData = cast (Type.createInstance (className.get (id), []), BitmapData);
				return Bytes.ofData (bitmapData.getPixels (bitmapData.rect));
			
			default:
				
				return null;
			
		}
		
		return cast (Type.createInstance (className.get (id), []), Bytes);
		
		#elseif html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Bytes);
		else return Bytes.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if flash
		
		var src = Type.createInstance (className.get (id), []);
		
		var font = new Font (src.fontName);
		font.src = src;
		return font;
		
		#elseif html5
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return Font.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Image);
			
		} else {
			
			return Image.fromFile (path.get (id));
			
		}
		
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
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes.getString (0, bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.getString (0, bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		//if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		//}
		
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
	
	
	public override function loadAudioBuffer (id:String):Future<AudioBuffer> {
		
		var promise = new Promise<AudioBuffer> ();
		
		#if (flash)
		
		if (path.exists (id)) {
			
			var soundLoader = new Sound ();
			soundLoader.addEventListener (Event.COMPLETE, function (event) {
				
				var audioBuffer:AudioBuffer = new AudioBuffer();
				audioBuffer.src = event.currentTarget;
				promise.complete (audioBuffer);
				
			});
			soundLoader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			soundLoader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			soundLoader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getAudioBuffer (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<AudioBuffer> (function () return getAudioBuffer (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadBytes (id:String):Future<Bytes> {
		
		var promise = new Promise<Bytes> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.dataFormat = flash.net.URLLoaderDataFormat.BINARY;
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = Bytes.ofData (event.currentTarget.data);
				promise.complete (bytes);
				
			});
			loader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			promise.completeWith (request.load (path.get (id) + "?" + Assets.cache.version));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Bytes> (function () return getBytes (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadImage (id:String):Future<Image> {
		
		var promise = new Promise<Image> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				promise.complete (Image.fromBitmapData (bitmapData));
				
			});
			loader.contentLoaderInfo.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.contentLoaderInfo.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var image = new js.html.Image ();
			image.onload = function (_):Void {
				
				promise.complete (Image.fromImageElement (image));
				
			}
			image.onerror = promise.error;
			image.src = path.get (id) + "?" + Assets.cache.version;
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Image> (function () return getImage (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = Bytes.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = Bytes.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = Bytes.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = Bytes.readFile ("../Resources/manifest");
			#elseif (ios || tvos)
			var bytes = Bytes.readFile ("assets/manifest");
			#else
			var bytes = Bytes.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				if (bytes.length > 0) {
					
					var data = bytes.getString (0, bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								#if (ios || tvos)
								path.set (asset.id, "assets/" + asset.path);
								#else
								path.set (asset.id, asset.path);
								#end
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
	
	
	public override function loadText (id:String):Future<String> {
		
		var promise = new Promise<String> ();
		
		#if html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			var future = request.load (path.get (id) + "?" + Assets.cache.version);
			future.onProgress (function (progress) promise.progress (progress));
			future.onError (function (msg) promise.error (msg));
			future.onComplete (function (bytes) promise.complete (bytes.getString (0, bytes.length)));
			
		} else {
			
			promise.complete (getText (id));
			
		}
		
		#else
		
		promise.completeWith (loadBytes (id).then (function (bytes) {
			
			return new Future<String> (function () {
				
				if (bytes == null) {
					
					return null;
					
				} else {
					
					return bytes.getString (0, bytes.length);
					
				}
				
			});
			
		}));
		
		#end
		
		return promise.future;
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_data_data_goes_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_global_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_global_oep extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_global_tmx extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_home1f_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_home1f_tmx extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_home2f_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_market_oel extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_market_tmx extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_basictiles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_beachgirl_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_boots_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_bsod_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_can_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_char_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_dirblock_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_diskette_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_earth_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_glow_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_images_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_letter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_lighter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_merchant_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pencil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_photo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_select_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_uptiles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_watches_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends flash.text.Font { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends flash.text.Font { }
@:keep @:bind #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends flash.utils.ByteArray { }


#elseif html5


































@:keep #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { super (); name = "Nokia Cellphone FC Small"; } } 
@:keep #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { super (); name = "Monsterrat"; } } 

































#else



#if (windows || mac || linux || cpp)


@:file("assets/data/data-goes-here.txt") #if display private #end class __ASSET__assets_data_data_goes_here_txt extends lime.utils.Bytes {}
@:file("assets/data/global.oel") #if display private #end class __ASSET__assets_data_global_oel extends lime.utils.Bytes {}
@:file("assets/data/global.oep") #if display private #end class __ASSET__assets_data_global_oep extends lime.utils.Bytes {}
@:file("assets/data/global.tmx") #if display private #end class __ASSET__assets_data_global_tmx extends lime.utils.Bytes {}
@:file("assets/data/home1f.oel") #if display private #end class __ASSET__assets_data_home1f_oel extends lime.utils.Bytes {}
@:file("assets/data/home1f.tmx") #if display private #end class __ASSET__assets_data_home1f_tmx extends lime.utils.Bytes {}
@:file("assets/data/home2f.oel") #if display private #end class __ASSET__assets_data_home2f_oel extends lime.utils.Bytes {}
@:file("assets/data/market.oel") #if display private #end class __ASSET__assets_data_market_oel extends lime.utils.Bytes {}
@:file("assets/data/market.tmx") #if display private #end class __ASSET__assets_data_market_tmx extends lime.utils.Bytes {}
@:image("assets/images/basictiles.png") #if display private #end class __ASSET__assets_images_basictiles_png extends lime.graphics.Image {}
@:image("assets/images/beachgirl.png") #if display private #end class __ASSET__assets_images_beachgirl_png extends lime.graphics.Image {}
@:image("assets/images/boots.png") #if display private #end class __ASSET__assets_images_boots_png extends lime.graphics.Image {}
@:image("assets/images/bsod.png") #if display private #end class __ASSET__assets_images_bsod_png extends lime.graphics.Image {}
@:image("assets/images/can.png") #if display private #end class __ASSET__assets_images_can_png extends lime.graphics.Image {}
@:image("assets/images/char.png") #if display private #end class __ASSET__assets_images_char_png extends lime.graphics.Image {}
@:image("assets/images/dirblock.png") #if display private #end class __ASSET__assets_images_dirblock_png extends lime.graphics.Image {}
@:image("assets/images/diskette.png") #if display private #end class __ASSET__assets_images_diskette_png extends lime.graphics.Image {}
@:image("assets/images/earth.png") #if display private #end class __ASSET__assets_images_earth_png extends lime.graphics.Image {}
@:image("assets/images/glow-light.png") #if display private #end class __ASSET__assets_images_glow_light_png extends lime.graphics.Image {}
@:file("assets/images/images-go-here.txt") #if display private #end class __ASSET__assets_images_images_go_here_txt extends lime.utils.Bytes {}
@:image("assets/images/letter.png") #if display private #end class __ASSET__assets_images_letter_png extends lime.graphics.Image {}
@:image("assets/images/lighter.png") #if display private #end class __ASSET__assets_images_lighter_png extends lime.graphics.Image {}
@:image("assets/images/merchant.png") #if display private #end class __ASSET__assets_images_merchant_png extends lime.graphics.Image {}
@:image("assets/images/pencil.png") #if display private #end class __ASSET__assets_images_pencil_png extends lime.graphics.Image {}
@:image("assets/images/photo.png") #if display private #end class __ASSET__assets_images_photo_png extends lime.graphics.Image {}
@:image("assets/images/select.png") #if display private #end class __ASSET__assets_images_select_png extends lime.graphics.Image {}
@:image("assets/images/sky.png") #if display private #end class __ASSET__assets_images_sky_png extends lime.graphics.Image {}
@:image("assets/images/uptiles.png") #if display private #end class __ASSET__assets_images_uptiles_png extends lime.graphics.Image {}
@:image("assets/images/watches.png") #if display private #end class __ASSET__assets_images_watches_png extends lime.graphics.Image {}
@:file("assets/music/music-goes-here.txt") #if display private #end class __ASSET__assets_music_music_goes_here_txt extends lime.utils.Bytes {}
@:file("assets/sounds/sounds-go-here.txt") #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends lime.utils.Bytes {}
@:file("C:/SDK/HaxeToolkit/haxe/lib/flixel/4,1,1/assets/sounds/beep.mp3") #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends lime.utils.Bytes {}
@:file("C:/SDK/HaxeToolkit/haxe/lib/flixel/4,1,1/assets/sounds/flixel.mp3") #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends lime.utils.Bytes {}
@:font("C:/SDK/HaxeToolkit/haxe/lib/flixel/4,1,1/assets/fonts/nokiafc22.ttf") #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:font("C:/SDK/HaxeToolkit/haxe/lib/flixel/4,1,1/assets/fonts/monsterrat.ttf") #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel/4,1,1/assets/images/ui/button.png") #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/box.png") #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/button.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/button_arrow_down.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/button_arrow_left.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/button_arrow_right.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/button_arrow_up.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/button_thin.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/button_toggle.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/check_box.png") #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/check_mark.png") #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/chrome.png") #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/chrome_flat.png") #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/chrome_inset.png") #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/chrome_light.png") #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/dropdown_mark.png") #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/finger_big.png") #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/finger_small.png") #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/hilight.png") #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/invis.png") #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/minus_mark.png") #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/plus_mark.png") #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/radio.png") #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/radio_dot.png") #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/swatch.png") #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/tab.png") #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/tab_back.png") #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:image("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/images/tooltip_arrow.png") #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:file("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/xml/defaults.xml") #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends lime.utils.Bytes {}
@:file("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/xml/default_loading_screen.xml") #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends lime.utils.Bytes {}
@:file("C:/SDK/HaxeToolkit/haxe/lib/flixel-ui/2,1,0/assets/xml/default_popup.xml") #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends lime.utils.Bytes {}



#end
#end

#if (openfl && !flash)
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_nokiafc22_ttf (); src = font.src; name = font.name; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_monsterrat_ttf (); src = font.src; name = font.name; super (); }}

#end

#end