// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#ifndef INCLUDED___ASSET__flixel_flixel_ui_xml_default_popup_xml
#define INCLUDED___ASSET__flixel_flixel_ui_xml_default_popup_xml

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_openfl__legacy_utils_ByteArray
#include <openfl/_legacy/utils/ByteArray.h>
#endif
HX_DECLARE_CLASS0(__ASSET__flixel_flixel_ui_xml_default_popup_xml)
HX_DECLARE_CLASS2(haxe,io,Bytes)
HX_DECLARE_CLASS3(openfl,_legacy,utils,ByteArray)
HX_DECLARE_CLASS3(openfl,_legacy,utils,IDataInput)
HX_DECLARE_CLASS3(openfl,_legacy,utils,IDataOutput)
HX_DECLARE_CLASS3(openfl,_legacy,utils,IMemoryRange)



class HXCPP_CLASS_ATTRIBUTES __ASSET__flixel_flixel_ui_xml_default_popup_xml_obj : public  ::openfl::_legacy::utils::ByteArray_obj
{
	public:
		typedef  ::openfl::_legacy::utils::ByteArray_obj super;
		typedef __ASSET__flixel_flixel_ui_xml_default_popup_xml_obj OBJ_;
		__ASSET__flixel_flixel_ui_xml_default_popup_xml_obj();

	public:
		enum { _hx_ClassId = 0x035f4237 };

		void __construct( ::Dynamic __o_size);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="__ASSET__flixel_flixel_ui_xml_default_popup_xml")
			{ return hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return hx::Object::operator new(inSize+extra,true,"__ASSET__flixel_flixel_ui_xml_default_popup_xml"); }
		static hx::ObjectPtr< __ASSET__flixel_flixel_ui_xml_default_popup_xml_obj > __new( ::Dynamic __o_size);
		static hx::ObjectPtr< __ASSET__flixel_flixel_ui_xml_default_popup_xml_obj > __alloc(hx::Ctx *_hx_ctx, ::Dynamic __o_size);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~__ASSET__flixel_flixel_ui_xml_default_popup_xml_obj();

		HX_DO_RTTI_ALL;
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, hx::PropertyAccess inCallProp);
		static bool __SetStatic(const ::String &inString, Dynamic &ioValue, hx::PropertyAccess inCallProp);
		static void __register();
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_HCSTRING("__ASSET__flixel_flixel_ui_xml_default_popup_xml","\xe3","\x41","\xdd","\xc1"); }

		static void __boot();
		static ::String resourceName;
};


#endif /* INCLUDED___ASSET__flixel_flixel_ui_xml_default_popup_xml */ 
