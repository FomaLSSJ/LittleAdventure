// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#ifndef INCLUDED_flixel_addons_editors_tiled_TiledObject
#define INCLUDED_flixel_addons_editors_tiled_TiledObject

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_38344beec7696400
#define INCLUDED_38344beec7696400
#include "cpp/Int64.h"
#endif
HX_DECLARE_CLASS4(flixel,addons,editors,tiled,TiledLayer)
HX_DECLARE_CLASS4(flixel,addons,editors,tiled,TiledObject)
HX_DECLARE_CLASS4(flixel,addons,editors,tiled,TiledObjectLayer)
HX_DECLARE_CLASS4(flixel,addons,editors,tiled,TiledPropertySet)
HX_DECLARE_CLASS2(flixel,math,FlxPoint)
HX_DECLARE_CLASS2(flixel,util,IFlxDestroyable)
HX_DECLARE_CLASS2(flixel,util,IFlxPooled)
HX_DECLARE_CLASS2(haxe,xml,Fast)

namespace flixel{
namespace addons{
namespace editors{
namespace tiled{


class HXCPP_CLASS_ATTRIBUTES TiledObject_obj : public hx::Object
{
	public:
		typedef hx::Object super;
		typedef TiledObject_obj OBJ_;
		TiledObject_obj();

	public:
		enum { _hx_ClassId = 0x5a975076 };

		void __construct( ::haxe::xml::Fast source, ::flixel::addons::editors::tiled::TiledObjectLayer parent);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="flixel.addons.editors.tiled.TiledObject")
			{ return hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return hx::Object::operator new(inSize+extra,true,"flixel.addons.editors.tiled.TiledObject"); }
		static hx::ObjectPtr< TiledObject_obj > __new( ::haxe::xml::Fast source, ::flixel::addons::editors::tiled::TiledObjectLayer parent);
		static hx::ObjectPtr< TiledObject_obj > __alloc(hx::Ctx *_hx_ctx, ::haxe::xml::Fast source, ::flixel::addons::editors::tiled::TiledObjectLayer parent);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~TiledObject_obj();

		HX_DO_RTTI_ALL;
		hx::Val __Field(const ::String &inString, hx::PropertyAccess inCallProp);
		hx::Val __SetField(const ::String &inString,const hx::Val &inValue, hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_HCSTRING("TiledObject","\xb5","\x04","\x7c","\x3e"); }

		static void __boot();
		static int FLIPPED_VERTICALLY_FLAG;
		static int FLIPPED_HORIZONTALLY_FLAG;
		static int RECTANGLE;
		static int ELLIPSE;
		static int POLYGON;
		static int POLYLINE;
		static int TILE;
		int x;
		int y;
		int width;
		int height;
		::String name;
		::String type;
		 ::haxe::xml::Fast xmlData;
		Float angle;
		int gid;
		 ::flixel::addons::editors::tiled::TiledPropertySet properties;
		 ::flixel::addons::editors::tiled::TiledPropertySet shared;
		 ::flixel::addons::editors::tiled::TiledObjectLayer layer;
		int objectType;
		bool flippedHorizontally;
		bool flippedVertically;
		::Array< ::Dynamic> points;
		void getPoints( ::haxe::xml::Fast node);
		::Dynamic getPoints_dyn();

		 cpp::Int64Struct parseString(::String sParam);
		::Dynamic parseString_dyn();

};

} // end namespace flixel
} // end namespace addons
} // end namespace editors
} // end namespace tiled

#endif /* INCLUDED_flixel_addons_editors_tiled_TiledObject */ 
