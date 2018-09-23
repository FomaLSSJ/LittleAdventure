package;


import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {
	
	
	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	
	
	public static function init (config:Dynamic):Void {
		
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
		
		var rootPath = null;
		
		if (config != null && Reflect.hasField (config, "rootPath")) {
			
			rootPath = Reflect.field (config, "rootPath");
			
		}
		
		if (rootPath == null) {
			
			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif (sys && windows && !cs)
			rootPath = FileSystem.absolutePath (haxe.io.Path.directory (#if (haxe_ver >= 3.3) Sys.programPath () #else Sys.executablePath () #end)) + "/";
			#else
			rootPath = "";
			#end
			
		}
		
		Assets.defaultRootPath = rootPath;
		
		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end
		
		var data, manifest, library;
		
		#if kha
		
		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);
		
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");
		
		#else
		
		data = '{"name":null,"assets":"aoy4:sizezy4:typey4:TEXTy9:classNamey39:__ASSET__assets_data_data_goes_here_txty2:idy34:assets%2Fdata%2Fdata-goes-here.txtgoR0i12218R1R2R3y31:__ASSET__assets_data_global_oelR5y26:assets%2Fdata%2Fglobal.oelgoR0i9273R1R2R3y31:__ASSET__assets_data_global_oepR5y26:assets%2Fdata%2Fglobal.oepgoR0i4050R1R2R3y31:__ASSET__assets_data_global_tmxR5y26:assets%2Fdata%2Fglobal.tmxgoR0i3296R1R2R3y31:__ASSET__assets_data_home1f_oelR5y26:assets%2Fdata%2Fhome1f.oelgoR0i2034R1R2R3y31:__ASSET__assets_data_home1f_tmxR5y26:assets%2Fdata%2Fhome1f.tmxgoR0i3333R1R2R3y31:__ASSET__assets_data_home2f_oelR5y26:assets%2Fdata%2Fhome2f.oelgoR0i3352R1R2R3y31:__ASSET__assets_data_market_oelR5y26:assets%2Fdata%2Fmarket.oelgoR0i1943R1R2R3y31:__ASSET__assets_data_market_tmxR5y26:assets%2Fdata%2Fmarket.tmxgoR0i10789R1y5:IMAGER3y37:__ASSET__assets_images_basictiles_pngR5y32:assets%2Fimages%2Fbasictiles.pnggoR0i873R1R23R3y36:__ASSET__assets_images_beachgirl_pngR5y31:assets%2Fimages%2Fbeachgirl.pnggoR0i244R1R23R3y32:__ASSET__assets_images_boots_pngR5y27:assets%2Fimages%2Fboots.pnggoR0i48308R1R23R3y31:__ASSET__assets_images_bsod_pngR5y26:assets%2Fimages%2Fbsod.pnggoR0i299R1R23R3y30:__ASSET__assets_images_can_pngR5y25:assets%2Fimages%2Fcan.pnggoR0i629R1R23R3y31:__ASSET__assets_images_char_pngR5y26:assets%2Fimages%2Fchar.pnggoR0i255R1R23R3y35:__ASSET__assets_images_dirblock_pngR5y30:assets%2Fimages%2Fdirblock.pnggoR0i276R1R23R3y35:__ASSET__assets_images_diskette_pngR5y30:assets%2Fimages%2Fdiskette.pnggoR0i17430R1R23R3y32:__ASSET__assets_images_earth_pngR5y27:assets%2Fimages%2Fearth.pnggoR0i1458R1R23R3y37:__ASSET__assets_images_glow_light_pngR5y32:assets%2Fimages%2Fglow-light.pnggoR0zR1R2R3y41:__ASSET__assets_images_images_go_here_txtR5y36:assets%2Fimages%2Fimages-go-here.txtgoR0i17756R1R23R3y33:__ASSET__assets_images_iphone_pngR5y28:assets%2Fimages%2Fiphone.pnggoR0i296R1R23R3y33:__ASSET__assets_images_letter_pngR5y28:assets%2Fimages%2Fletter.pnggoR0i3310R1R23R3y34:__ASSET__assets_images_lighter_pngR5y29:assets%2Fimages%2Flighter.pnggoR0i999R1R23R3y35:__ASSET__assets_images_merchant_pngR5y30:assets%2Fimages%2Fmerchant.pnggoR0i257R1R23R3y33:__ASSET__assets_images_pencil_pngR5y28:assets%2Fimages%2Fpencil.pnggoR0i281R1R23R3y32:__ASSET__assets_images_photo_pngR5y27:assets%2Fimages%2Fphoto.pnggoR0i234R1R23R3y33:__ASSET__assets_images_select_pngR5y28:assets%2Fimages%2Fselect.pnggoR0i8672R1R23R3y30:__ASSET__assets_images_sky_pngR5y25:assets%2Fimages%2Fsky.pnggoR0i6182R1R23R3y34:__ASSET__assets_images_spinner_pngR5y29:assets%2Fimages%2Fspinner.pnggoR0i6920R1R23R3y34:__ASSET__assets_images_uptiles_pngR5y29:assets%2Fimages%2Fuptiles.pnggoR0i271R1R23R3y34:__ASSET__assets_images_watches_pngR5y29:assets%2Fimages%2Fwatches.pnggoR0zR1R2R3y41:__ASSET__assets_music_music_goes_here_txtR5y36:assets%2Fmusic%2Fmusic-goes-here.txtgoR0zR1R2R3y41:__ASSET__assets_sounds_sounds_go_here_txtR5y36:assets%2Fsounds%2Fsounds-go-here.txtgoR0i2114R1y5:MUSICR3y31:__ASSET__flixel_sounds_beep_mp3R5y26:flixel%2Fsounds%2Fbeep.mp3goR0i39706R1R72R3y33:__ASSET__flixel_sounds_flixel_mp3R5y28:flixel%2Fsounds%2Fflixel.mp3goR0i15744R1y4:FONTR3y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfgoR0i29724R1R77R3y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfgoR0i519R1R23R3y36:__ASSET__flixel_images_ui_button_pngR5y33:flixel%2Fimages%2Fui%2Fbutton.pnggoR0i3280R1R23R3y39:__ASSET__flixel_images_logo_default_pngR5y36:flixel%2Fimages%2Flogo%2Fdefault.pnggoR0i912R1R23R3y37:__ASSET__flixel_flixel_ui_img_box_pngR5y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pnggoR0i433R1R23R3y40:__ASSET__flixel_flixel_ui_img_button_pngR5y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pnggoR0i446R1R23R3y51:__ASSET__flixel_flixel_ui_img_button_arrow_down_pngR5y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pnggoR0i459R1R23R3y51:__ASSET__flixel_flixel_ui_img_button_arrow_left_pngR5y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pnggoR0i511R1R23R3y52:__ASSET__flixel_flixel_ui_img_button_arrow_right_pngR5y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pnggoR0i493R1R23R3y49:__ASSET__flixel_flixel_ui_img_button_arrow_up_pngR5y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pnggoR0i247R1R23R3y45:__ASSET__flixel_flixel_ui_img_button_thin_pngR5y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pnggoR0i534R1R23R3y47:__ASSET__flixel_flixel_ui_img_button_toggle_pngR5y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pnggoR0i922R1R23R3y43:__ASSET__flixel_flixel_ui_img_check_box_pngR5y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pnggoR0i946R1R23R3y44:__ASSET__flixel_flixel_ui_img_check_mark_pngR5y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pnggoR0i253R1R23R3y40:__ASSET__flixel_flixel_ui_img_chrome_pngR5y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pnggoR0i212R1R23R3y45:__ASSET__flixel_flixel_ui_img_chrome_flat_pngR5y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pnggoR0i192R1R23R3y46:__ASSET__flixel_flixel_ui_img_chrome_inset_pngR5y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pnggoR0i214R1R23R3y46:__ASSET__flixel_flixel_ui_img_chrome_light_pngR5y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pnggoR0i156R1R23R3y47:__ASSET__flixel_flixel_ui_img_dropdown_mark_pngR5y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pnggoR0i1724R1R23R3y44:__ASSET__flixel_flixel_ui_img_finger_big_pngR5y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pnggoR0i294R1R23R3y46:__ASSET__flixel_flixel_ui_img_finger_small_pngR5y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pnggoR0i129R1R23R3y41:__ASSET__flixel_flixel_ui_img_hilight_pngR5y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pnggoR0i128R1R23R3y39:__ASSET__flixel_flixel_ui_img_invis_pngR5y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pnggoR0i136R1R23R3y44:__ASSET__flixel_flixel_ui_img_minus_mark_pngR5y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pnggoR0i147R1R23R3y43:__ASSET__flixel_flixel_ui_img_plus_mark_pngR5y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pnggoR0i191R1R23R3y39:__ASSET__flixel_flixel_ui_img_radio_pngR5y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pnggoR0i153R1R23R3y43:__ASSET__flixel_flixel_ui_img_radio_dot_pngR5y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pnggoR0i185R1R23R3y40:__ASSET__flixel_flixel_ui_img_swatch_pngR5y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pnggoR0i201R1R23R3y37:__ASSET__flixel_flixel_ui_img_tab_pngR5y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pnggoR0i210R1R23R3y42:__ASSET__flixel_flixel_ui_img_tab_back_pngR5y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pnggoR0i18509R1R23R3y47:__ASSET__flixel_flixel_ui_img_tooltip_arrow_pngR5y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pnggoR0i1263R1R2R3y42:__ASSET__flixel_flixel_ui_xml_defaults_xmlR5y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlgoR0i1953R1R2R3y56:__ASSET__flixel_flixel_ui_xml_default_loading_screen_xmlR5y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlgoR0i1848R1R2R3y47:__ASSET__flixel_flixel_ui_xml_default_popup_xmlR5y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		
		
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		
		
		#end
		
	}
	
	
}


#if kha

null

#else

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
@:keep @:bind #if display private #end class __ASSET__assets_images_iphone_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_letter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_lighter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_merchant_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pencil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_photo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_select_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_spinner_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_uptiles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_watches_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends flash.text.Font { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends flash.text.Font { }
@:keep @:bind #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
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
@:keep @:bind #if display private #end class __ASSET__manifest_default_json extends flash.utils.ByteArray { }


#elseif (desktop || cpp)

@:keep @:file("assets/data/data-goes-here.txt") #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/global.oel") #if display private #end class __ASSET__assets_data_global_oel extends haxe.io.Bytes {}
@:keep @:file("assets/data/global.oep") #if display private #end class __ASSET__assets_data_global_oep extends haxe.io.Bytes {}
@:keep @:file("assets/data/global.tmx") #if display private #end class __ASSET__assets_data_global_tmx extends haxe.io.Bytes {}
@:keep @:file("assets/data/home1f.oel") #if display private #end class __ASSET__assets_data_home1f_oel extends haxe.io.Bytes {}
@:keep @:file("assets/data/home1f.tmx") #if display private #end class __ASSET__assets_data_home1f_tmx extends haxe.io.Bytes {}
@:keep @:file("assets/data/home2f.oel") #if display private #end class __ASSET__assets_data_home2f_oel extends haxe.io.Bytes {}
@:keep @:file("assets/data/market.oel") #if display private #end class __ASSET__assets_data_market_oel extends haxe.io.Bytes {}
@:keep @:file("assets/data/market.tmx") #if display private #end class __ASSET__assets_data_market_tmx extends haxe.io.Bytes {}
@:keep @:image("assets/images/basictiles.png") #if display private #end class __ASSET__assets_images_basictiles_png extends lime.graphics.Image {}
@:keep @:image("assets/images/beachgirl.png") #if display private #end class __ASSET__assets_images_beachgirl_png extends lime.graphics.Image {}
@:keep @:image("assets/images/boots.png") #if display private #end class __ASSET__assets_images_boots_png extends lime.graphics.Image {}
@:keep @:image("assets/images/bsod.png") #if display private #end class __ASSET__assets_images_bsod_png extends lime.graphics.Image {}
@:keep @:image("assets/images/can.png") #if display private #end class __ASSET__assets_images_can_png extends lime.graphics.Image {}
@:keep @:image("assets/images/char.png") #if display private #end class __ASSET__assets_images_char_png extends lime.graphics.Image {}
@:keep @:image("assets/images/dirblock.png") #if display private #end class __ASSET__assets_images_dirblock_png extends lime.graphics.Image {}
@:keep @:image("assets/images/diskette.png") #if display private #end class __ASSET__assets_images_diskette_png extends lime.graphics.Image {}
@:keep @:image("assets/images/earth.png") #if display private #end class __ASSET__assets_images_earth_png extends lime.graphics.Image {}
@:keep @:image("assets/images/glow-light.png") #if display private #end class __ASSET__assets_images_glow_light_png extends lime.graphics.Image {}
@:keep @:file("assets/images/images-go-here.txt") #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/iphone.png") #if display private #end class __ASSET__assets_images_iphone_png extends lime.graphics.Image {}
@:keep @:image("assets/images/letter.png") #if display private #end class __ASSET__assets_images_letter_png extends lime.graphics.Image {}
@:keep @:image("assets/images/lighter.png") #if display private #end class __ASSET__assets_images_lighter_png extends lime.graphics.Image {}
@:keep @:image("assets/images/merchant.png") #if display private #end class __ASSET__assets_images_merchant_png extends lime.graphics.Image {}
@:keep @:image("assets/images/pencil.png") #if display private #end class __ASSET__assets_images_pencil_png extends lime.graphics.Image {}
@:keep @:image("assets/images/photo.png") #if display private #end class __ASSET__assets_images_photo_png extends lime.graphics.Image {}
@:keep @:image("assets/images/select.png") #if display private #end class __ASSET__assets_images_select_png extends lime.graphics.Image {}
@:keep @:image("assets/images/sky.png") #if display private #end class __ASSET__assets_images_sky_png extends lime.graphics.Image {}
@:keep @:image("assets/images/spinner.png") #if display private #end class __ASSET__assets_images_spinner_png extends lime.graphics.Image {}
@:keep @:image("assets/images/uptiles.png") #if display private #end class __ASSET__assets_images_uptiles_png extends lime.graphics.Image {}
@:keep @:image("assets/images/watches.png") #if display private #end class __ASSET__assets_images_watches_png extends lime.graphics.Image {}
@:keep @:file("assets/music/music-goes-here.txt") #if display private #end class __ASSET__assets_music_music_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/sounds-go-here.txt") #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,5,1/assets/sounds/beep.mp3") #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,5,1/assets/sounds/flixel.mp3") #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:font("C:/HaxeToolkit/haxe/lib/flixel/4,5,1/assets/fonts/nokiafc22.ttf") #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("C:/HaxeToolkit/haxe/lib/flixel/4,5,1/assets/fonts/monsterrat.ttf") #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,5,1/assets/images/ui/button.png") #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,5,1/assets/images/logo/default.png") #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/box.png") #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/button.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/button_arrow_down.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/button_arrow_left.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/button_arrow_right.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/button_arrow_up.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/button_thin.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/button_toggle.png") #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/check_box.png") #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/check_mark.png") #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/chrome.png") #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/chrome_flat.png") #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/chrome_inset.png") #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/chrome_light.png") #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/dropdown_mark.png") #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/finger_big.png") #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/finger_small.png") #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/hilight.png") #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/invis.png") #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/minus_mark.png") #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/plus_mark.png") #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/radio.png") #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/radio_dot.png") #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/swatch.png") #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/tab.png") #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/tab_back.png") #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/images/tooltip_arrow.png") #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/xml/defaults.xml") #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/xml/default_loading_screen.xml") #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,1/assets/xml/default_popup.xml") #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("") #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end