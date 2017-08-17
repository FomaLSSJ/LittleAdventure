// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#ifndef INCLUDED_PlayState
#define INCLUDED_PlayState

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_flixel_FlxState
#include <flixel/FlxState.h>
#endif
HX_DECLARE_CLASS0(Door)
HX_DECLARE_CLASS0(ImageLoad)
HX_DECLARE_CLASS0(PlayState)
HX_DECLARE_CLASS0(Player)
HX_DECLARE_CLASS1(flixel,FlxBasic)
HX_DECLARE_CLASS1(flixel,FlxObject)
HX_DECLARE_CLASS1(flixel,FlxSprite)
HX_DECLARE_CLASS1(flixel,FlxState)
HX_DECLARE_CLASS2(flixel,group,FlxTypedGroup)
HX_DECLARE_CLASS2(flixel,util,IFlxDestroyable)



class HXCPP_CLASS_ATTRIBUTES PlayState_obj : public  ::flixel::FlxState_obj
{
	public:
		typedef  ::flixel::FlxState_obj super;
		typedef PlayState_obj OBJ_;
		PlayState_obj();

	public:
		enum { _hx_ClassId = 0x46c2835d };

		void __construct( ::Dynamic MaxSize);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="PlayState")
			{ return hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return hx::Object::operator new(inSize+extra,true,"PlayState"); }
		static hx::ObjectPtr< PlayState_obj > __new( ::Dynamic MaxSize);
		static hx::ObjectPtr< PlayState_obj > __alloc(hx::Ctx *_hx_ctx, ::Dynamic MaxSize);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~PlayState_obj();

		HX_DO_RTTI_ALL;
		hx::Val __Field(const ::String &inString, hx::PropertyAccess inCallProp);
		hx::Val __SetField(const ::String &inString,const hx::Val &inValue, hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_HCSTRING("PlayState","\x5d","\x83","\xc2","\x46"); }

		int posX;
		int posY;
		 ::ImageLoad image;
		 ::Player player;
		::String username;
		 ::flixel::group::FlxTypedGroup backMap;
		 ::flixel::group::FlxTypedGroup frontMap;
		 ::flixel::group::FlxTypedGroup objectGroup;
		 ::flixel::group::FlxTypedGroup guiGroup;
		 ::flixel::group::FlxTypedGroup doorsGroup;
		 ::flixel::group::FlxTypedGroup charactersGroup;
		bool testing;
		void create();

		void loadMap(::String map, ::Dynamic playerX, ::Dynamic playerY);
		::Dynamic loadMap_dyn();

		void destroy();

		void update(Float elapsed);

		void touchDoor( ::Player p, ::Door d);
		::Dynamic touchDoor_dyn();

};


#endif /* INCLUDED_PlayState */ 
