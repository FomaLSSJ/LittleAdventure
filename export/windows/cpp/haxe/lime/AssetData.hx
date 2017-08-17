package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
			type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/global.oel", "assets/data/global.oel");
			type.set ("assets/data/global.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/global.oep", "assets/data/global.oep");
			type.set ("assets/data/global.oep", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/global.tmx", "assets/data/global.tmx");
			type.set ("assets/data/global.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/home1f.oel", "assets/data/home1f.oel");
			type.set ("assets/data/home1f.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/home1f.tmx", "assets/data/home1f.tmx");
			type.set ("assets/data/home1f.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/home2f.oel", "assets/data/home2f.oel");
			type.set ("assets/data/home2f.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/market.oel", "assets/data/market.oel");
			type.set ("assets/data/market.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/data/market.tmx", "assets/data/market.tmx");
			type.set ("assets/data/market.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/basictiles.png", "assets/images/basictiles.png");
			type.set ("assets/images/basictiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/beachgirl.png", "assets/images/beachgirl.png");
			type.set ("assets/images/beachgirl.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/boots.png", "assets/images/boots.png");
			type.set ("assets/images/boots.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/bsod.png", "assets/images/bsod.png");
			type.set ("assets/images/bsod.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/can.png", "assets/images/can.png");
			type.set ("assets/images/can.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/char.png", "assets/images/char.png");
			type.set ("assets/images/char.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/dirblock.png", "assets/images/dirblock.png");
			type.set ("assets/images/dirblock.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/diskette.png", "assets/images/diskette.png");
			type.set ("assets/images/diskette.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/earth.png", "assets/images/earth.png");
			type.set ("assets/images/earth.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/glow-light.png", "assets/images/glow-light.png");
			type.set ("assets/images/glow-light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
			type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/letter.png", "assets/images/letter.png");
			type.set ("assets/images/letter.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/lighter.png", "assets/images/lighter.png");
			type.set ("assets/images/lighter.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/merchant.png", "assets/images/merchant.png");
			type.set ("assets/images/merchant.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/pencil.png", "assets/images/pencil.png");
			type.set ("assets/images/pencil.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/photo.png", "assets/images/photo.png");
			type.set ("assets/images/photo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/select.png", "assets/images/select.png");
			type.set ("assets/images/select.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/sky.png", "assets/images/sky.png");
			type.set ("assets/images/sky.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/uptiles.png", "assets/images/uptiles.png");
			type.set ("assets/images/uptiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/watches.png", "assets/images/watches.png");
			type.set ("assets/images/watches.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
			type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
			type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/images/logo/default.png", "flixel/images/logo/default.png");
			type.set ("flixel/images/logo/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/box.png", "flixel/flixel-ui/img/box.png");
			type.set ("flixel/flixel-ui/img/box.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button.png", "flixel/flixel-ui/img/button.png");
			type.set ("flixel/flixel-ui/img/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_arrow_down.png", "flixel/flixel-ui/img/button_arrow_down.png");
			type.set ("flixel/flixel-ui/img/button_arrow_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_arrow_left.png", "flixel/flixel-ui/img/button_arrow_left.png");
			type.set ("flixel/flixel-ui/img/button_arrow_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_arrow_right.png", "flixel/flixel-ui/img/button_arrow_right.png");
			type.set ("flixel/flixel-ui/img/button_arrow_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_arrow_up.png", "flixel/flixel-ui/img/button_arrow_up.png");
			type.set ("flixel/flixel-ui/img/button_arrow_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_thin.png", "flixel/flixel-ui/img/button_thin.png");
			type.set ("flixel/flixel-ui/img/button_thin.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_toggle.png", "flixel/flixel-ui/img/button_toggle.png");
			type.set ("flixel/flixel-ui/img/button_toggle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/check_box.png", "flixel/flixel-ui/img/check_box.png");
			type.set ("flixel/flixel-ui/img/check_box.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/check_mark.png", "flixel/flixel-ui/img/check_mark.png");
			type.set ("flixel/flixel-ui/img/check_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome.png", "flixel/flixel-ui/img/chrome.png");
			type.set ("flixel/flixel-ui/img/chrome.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome_flat.png", "flixel/flixel-ui/img/chrome_flat.png");
			type.set ("flixel/flixel-ui/img/chrome_flat.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome_inset.png", "flixel/flixel-ui/img/chrome_inset.png");
			type.set ("flixel/flixel-ui/img/chrome_inset.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome_light.png", "flixel/flixel-ui/img/chrome_light.png");
			type.set ("flixel/flixel-ui/img/chrome_light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/dropdown_mark.png", "flixel/flixel-ui/img/dropdown_mark.png");
			type.set ("flixel/flixel-ui/img/dropdown_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/finger_big.png", "flixel/flixel-ui/img/finger_big.png");
			type.set ("flixel/flixel-ui/img/finger_big.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/finger_small.png", "flixel/flixel-ui/img/finger_small.png");
			type.set ("flixel/flixel-ui/img/finger_small.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/hilight.png", "flixel/flixel-ui/img/hilight.png");
			type.set ("flixel/flixel-ui/img/hilight.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/invis.png", "flixel/flixel-ui/img/invis.png");
			type.set ("flixel/flixel-ui/img/invis.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/minus_mark.png", "flixel/flixel-ui/img/minus_mark.png");
			type.set ("flixel/flixel-ui/img/minus_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/plus_mark.png", "flixel/flixel-ui/img/plus_mark.png");
			type.set ("flixel/flixel-ui/img/plus_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/radio.png", "flixel/flixel-ui/img/radio.png");
			type.set ("flixel/flixel-ui/img/radio.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/radio_dot.png", "flixel/flixel-ui/img/radio_dot.png");
			type.set ("flixel/flixel-ui/img/radio_dot.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/swatch.png", "flixel/flixel-ui/img/swatch.png");
			type.set ("flixel/flixel-ui/img/swatch.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/tab.png", "flixel/flixel-ui/img/tab.png");
			type.set ("flixel/flixel-ui/img/tab.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/tab_back.png", "flixel/flixel-ui/img/tab_back.png");
			type.set ("flixel/flixel-ui/img/tab_back.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/tooltip_arrow.png", "flixel/flixel-ui/img/tooltip_arrow.png");
			type.set ("flixel/flixel-ui/img/tooltip_arrow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/xml/defaults.xml", "flixel/flixel-ui/xml/defaults.xml");
			type.set ("flixel/flixel-ui/xml/defaults.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("flixel/flixel-ui/xml/default_loading_screen.xml", "flixel/flixel-ui/xml/default_loading_screen.xml");
			type.set ("flixel/flixel-ui/xml/default_loading_screen.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("flixel/flixel-ui/xml/default_popup.xml", "flixel/flixel-ui/xml/default_popup.xml");
			type.set ("flixel/flixel-ui/xml/default_popup.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
