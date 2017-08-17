// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#ifndef INCLUDED_flixel_addons_ui_FlxUI9SliceSprite
#define INCLUDED_flixel_addons_ui_FlxUI9SliceSprite

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_flixel_addons_ui_FlxUISprite
#include <flixel/addons/ui/FlxUISprite.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IFlxUIWidget
#include <flixel/addons/ui/interfaces/IFlxUIWidget.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IResizable
#include <flixel/addons/ui/interfaces/IResizable.h>
#endif
HX_DECLARE_CLASS1(flixel,FlxBasic)
HX_DECLARE_CLASS1(flixel,FlxObject)
HX_DECLARE_CLASS1(flixel,FlxSprite)
HX_DECLARE_CLASS1(flixel,IFlxBasic)
HX_DECLARE_CLASS1(flixel,IFlxSprite)
HX_DECLARE_CLASS3(flixel,addons,ui,FlxUI9SliceSprite)
HX_DECLARE_CLASS3(flixel,addons,ui,FlxUISprite)
HX_DECLARE_CLASS4(flixel,addons,ui,interfaces,IFlxUIWidget)
HX_DECLARE_CLASS4(flixel,addons,ui,interfaces,IResizable)
HX_DECLARE_CLASS2(flixel,math,FlxPoint)
HX_DECLARE_CLASS2(flixel,math,FlxRect)
HX_DECLARE_CLASS2(flixel,util,IFlxDestroyable)
HX_DECLARE_CLASS2(flixel,util,IFlxPooled)
HX_DECLARE_CLASS1(haxe,IMap)
HX_DECLARE_CLASS2(haxe,ds,StringMap)
HX_DECLARE_CLASS3(openfl,_legacy,display,BitmapData)
HX_DECLARE_CLASS3(openfl,_legacy,display,IBitmapDrawable)
HX_DECLARE_CLASS3(openfl,_legacy,geom,Matrix)
HX_DECLARE_CLASS3(openfl,_legacy,geom,Point)
HX_DECLARE_CLASS3(openfl,_legacy,geom,Rectangle)

namespace flixel{
namespace addons{
namespace ui{


class HXCPP_CLASS_ATTRIBUTES FlxUI9SliceSprite_obj : public  ::flixel::addons::ui::FlxUISprite_obj
{
	public:
		typedef  ::flixel::addons::ui::FlxUISprite_obj super;
		typedef FlxUI9SliceSprite_obj OBJ_;
		FlxUI9SliceSprite_obj();

	public:
		enum { _hx_ClassId = 0x488a99fd };

		void __construct(Float X,Float Y, ::Dynamic Graphic, ::openfl::_legacy::geom::Rectangle Rect,::Array< int > Slice9,hx::Null< int >  __o_Tile,hx::Null< bool >  __o_Smooth,::String __o_Id,hx::Null< Float >  __o_Ratio, ::flixel::math::FlxPoint Resize_point,hx::Null< int >  __o_Resize_axis,hx::Null< bool >  __o_DeferResize,hx::Null< int >  __o_Color);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="flixel.addons.ui.FlxUI9SliceSprite")
			{ return hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return hx::Object::operator new(inSize+extra,true,"flixel.addons.ui.FlxUI9SliceSprite"); }
		static hx::ObjectPtr< FlxUI9SliceSprite_obj > __new(Float X,Float Y, ::Dynamic Graphic, ::openfl::_legacy::geom::Rectangle Rect,::Array< int > Slice9,hx::Null< int >  __o_Tile,hx::Null< bool >  __o_Smooth,::String __o_Id,hx::Null< Float >  __o_Ratio, ::flixel::math::FlxPoint Resize_point,hx::Null< int >  __o_Resize_axis,hx::Null< bool >  __o_DeferResize,hx::Null< int >  __o_Color);
		static hx::ObjectPtr< FlxUI9SliceSprite_obj > __alloc(hx::Ctx *_hx_ctx,Float X,Float Y, ::Dynamic Graphic, ::openfl::_legacy::geom::Rectangle Rect,::Array< int > Slice9,hx::Null< int >  __o_Tile,hx::Null< bool >  __o_Smooth,::String __o_Id,hx::Null< Float >  __o_Ratio, ::flixel::math::FlxPoint Resize_point,hx::Null< int >  __o_Resize_axis,hx::Null< bool >  __o_DeferResize,hx::Null< int >  __o_Color);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~FlxUI9SliceSprite_obj();

		HX_DO_RTTI_ALL;
		hx::Val __Field(const ::String &inString, hx::PropertyAccess inCallProp);
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, hx::PropertyAccess inCallProp);
		hx::Val __SetField(const ::String &inString,const hx::Val &inValue, hx::PropertyAccess inCallProp);
		static bool __SetStatic(const ::String &inString, Dynamic &ioValue, hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		void *_hx_getInterface(int inHash);
		::String __ToString() const { return HX_HCSTRING("FlxUI9SliceSprite","\x64","\x3e","\x2f","\xc3"); }

		static void __boot();
		static int bitmapsCreated;
		static bool useSectionCache;
		static  ::haxe::ds::StringMap sectionCache;
		static  ::haxe::ds::StringMap cacheCounter;
		static  ::openfl::_legacy::geom::Point _staticPoint;
		static  ::openfl::_legacy::geom::Rectangle _staticRect;
		static  ::openfl::_legacy::geom::Rectangle _staticRect2;
		static  ::openfl::_legacy::geom::Point _staticPointZero;
		static  ::openfl::_legacy::geom::Matrix _staticMatrix;
		static  ::flixel::math::FlxRect _staticFlxRect;
		static  ::flixel::math::FlxRect _staticFlxRect2;
		static int TILE_NONE;
		static int TILE_BOTH;
		static int TILE_H;
		static int TILE_V;
		static  ::haxe::ds::StringMap _staticRects;
		static  ::openfl::_legacy::geom::Rectangle getRectFromString(::String str);
		static ::Dynamic getRectFromString_dyn();

		static ::Array< int > getRectIntsFromString(::String str);
		static ::Dynamic getRectIntsFromString_dyn();

		static ::String paintScale9( ::openfl::_legacy::display::BitmapData g,::String assetID,::Array< int > scale9, ::flixel::math::FlxRect rc,hx::Null< int >  tile,hx::Null< bool >  smooth, ::openfl::_legacy::display::BitmapData raw);
		static ::Dynamic paintScale9_dyn();

		static ::String makePaintScale9Id(::String assetId,::Array< int > slice9, ::flixel::math::FlxRect rect);
		static ::Dynamic makePaintScale9Id_dyn();

		static void paintCompoundBitmap( ::openfl::_legacy::display::BitmapData g,::String assetID, ::haxe::ds::StringMap sourceRects, ::flixel::math::FlxRect targetRect,hx::Null< int >  tile,hx::Null< bool >  smooth, ::openfl::_legacy::display::BitmapData raw);
		static ::Dynamic paintCompoundBitmap_dyn();

		static void paintBitmapSection( ::openfl::_legacy::display::BitmapData g,::String assetId, ::flixel::math::FlxRect src, ::flixel::math::FlxRect dst, ::openfl::_legacy::display::BitmapData srcData,hx::Null< int >  tile,hx::Null< bool >  smooth, ::openfl::_legacy::display::BitmapData raw);
		static ::Dynamic paintBitmapSection_dyn();

		static void bitmapFillRect( ::openfl::_legacy::display::BitmapData g, ::openfl::_legacy::geom::Rectangle dst, ::openfl::_legacy::display::BitmapData section,hx::Null< int >  tile,hx::Null< bool >  smooth_);
		static ::Dynamic bitmapFillRect_dyn();

		 ::openfl::_legacy::display::BitmapData _bmpCanvas;
		::String paintScale9_id;
		::Array< int > _slice9;
		int _tile;
		bool _smooth;
		::String _asset_id;
		 ::openfl::_legacy::display::BitmapData _raw_pixels;
		void destroy();

		void resize(Float w,Float h);

		void noLongerUsingCachedID(::String id);
		::Dynamic noLongerUsingCachedID_dyn();

		void purgeSections(::String id);
		::Dynamic purgeSections_dyn();

};

} // end namespace flixel
} // end namespace addons
} // end namespace ui

#endif /* INCLUDED_flixel_addons_ui_FlxUI9SliceSprite */ 
