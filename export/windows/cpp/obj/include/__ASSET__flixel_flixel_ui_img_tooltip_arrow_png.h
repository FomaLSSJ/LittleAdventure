// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#ifndef INCLUDED___ASSET__flixel_flixel_ui_img_tooltip_arrow_png
#define INCLUDED___ASSET__flixel_flixel_ui_img_tooltip_arrow_png

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_openfl__legacy_display_BitmapData
#include <openfl/_legacy/display/BitmapData.h>
#endif
HX_DECLARE_CLASS0(__ASSET__flixel_flixel_ui_img_tooltip_arrow_png)
HX_DECLARE_CLASS3(openfl,_legacy,display,BitmapData)
HX_DECLARE_CLASS3(openfl,_legacy,display,IBitmapDrawable)



class HXCPP_CLASS_ATTRIBUTES __ASSET__flixel_flixel_ui_img_tooltip_arrow_png_obj : public  ::openfl::_legacy::display::BitmapData_obj
{
	public:
		typedef  ::openfl::_legacy::display::BitmapData_obj super;
		typedef __ASSET__flixel_flixel_ui_img_tooltip_arrow_png_obj OBJ_;
		__ASSET__flixel_flixel_ui_img_tooltip_arrow_png_obj();

	public:
		enum { _hx_ClassId = 0x09c74768 };

		void __construct(int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="__ASSET__flixel_flixel_ui_img_tooltip_arrow_png")
			{ return hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return hx::Object::operator new(inSize+extra,true,"__ASSET__flixel_flixel_ui_img_tooltip_arrow_png"); }
		static hx::ObjectPtr< __ASSET__flixel_flixel_ui_img_tooltip_arrow_png_obj > __new(int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA);
		static hx::ObjectPtr< __ASSET__flixel_flixel_ui_img_tooltip_arrow_png_obj > __alloc(hx::Ctx *_hx_ctx,int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~__ASSET__flixel_flixel_ui_img_tooltip_arrow_png_obj();

		HX_DO_RTTI_ALL;
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, hx::PropertyAccess inCallProp);
		static bool __SetStatic(const ::String &inString, Dynamic &ioValue, hx::PropertyAccess inCallProp);
		static void __register();
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_HCSTRING("__ASSET__flixel_flixel_ui_img_tooltip_arrow_png","\xc0","\x46","\xc3","\x86"); }

		static void __boot();
		static ::String resourceName;
};


#endif /* INCLUDED___ASSET__flixel_flixel_ui_img_tooltip_arrow_png */ 
