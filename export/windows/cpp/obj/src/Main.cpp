// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_95f339a1d026d52c
#define INCLUDED_95f339a1d026d52c
#include "hxMath.h"
#endif
#ifndef INCLUDED_Main
#include <Main.h>
#endif
#ifndef INCLUDED_MenuState
#include <MenuState.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxGame
#include <flixel/FlxGame.h>
#endif
#ifndef INCLUDED_flixel_FlxState
#include <flixel/FlxState.h>
#endif
#ifndef INCLUDED_flixel_group_FlxTypedGroup
#include <flixel/group/FlxTypedGroup.h>
#endif
#ifndef INCLUDED_flixel_util_IFlxDestroyable
#include <flixel/util/IFlxDestroyable.h>
#endif
#ifndef INCLUDED_openfl__legacy_Lib
#include <openfl/_legacy/Lib.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_DisplayObject
#include <openfl/_legacy/display/DisplayObject.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_DisplayObjectContainer
#include <openfl/_legacy/display/DisplayObjectContainer.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_IBitmapDrawable
#include <openfl/_legacy/display/IBitmapDrawable.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_InteractiveObject
#include <openfl/_legacy/display/InteractiveObject.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_MovieClip
#include <openfl/_legacy/display/MovieClip.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_Sprite
#include <openfl/_legacy/display/Sprite.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_Stage
#include <openfl/_legacy/display/Stage.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_Event
#include <openfl/_legacy/events/Event.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_EventDispatcher
#include <openfl/_legacy/events/EventDispatcher.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_IEventDispatcher
#include <openfl/_legacy/events/IEventDispatcher.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_e47a9afac0942eb9_14_new,"Main","new",0x6616a5cb,"Main.new","Main.hx",14,0x087e5c05)
HX_LOCAL_STACK_FRAME(_hx_pos_e47a9afac0942eb9_50_init,"Main","init",0xea732345,"Main.init","Main.hx",50,0x087e5c05)
HX_LOCAL_STACK_FRAME(_hx_pos_e47a9afac0942eb9_60_setupGame,"Main","setupGame",0x7f7688ba,"Main.setupGame","Main.hx",60,0x087e5c05)
HX_LOCAL_STACK_FRAME(_hx_pos_e47a9afac0942eb9_28_main,"Main","main",0xed0e206e,"Main.main","Main.hx",28,0x087e5c05)

void Main_obj::__construct(){
            	HX_STACKFRAME(&_hx_pos_e47a9afac0942eb9_14_new)
HXLINE(  22)		this->startFullscreen = false;
HXLINE(  21)		this->skipSplash = false;
HXLINE(  20)		this->framerate = (int)60;
HXLINE(  19)		this->zoom = ((Float)-1);
HXLINE(  18)		this->initialState = hx::ClassOf< ::MenuState >();
HXLINE(  17)		this->gameHeight = (int)480;
HXLINE(  16)		this->gameWidth = (int)640;
HXLINE(  37)		super::__construct();
HXLINE(  39)		if (hx::IsNotNull( this->get_stage() )) {
HXLINE(  41)			this->init(null());
            		}
            		else {
HXLINE(  45)			this->addEventListener(::openfl::_legacy::events::Event_obj::ADDED_TO_STAGE,this->init_dyn(),null(),null(),null());
            		}
            	}

Dynamic Main_obj::__CreateEmpty() { return new Main_obj; }

void *Main_obj::_hx_vtable = 0;

Dynamic Main_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< Main_obj > _hx_result = new Main_obj();
	_hx_result->__construct();
	return _hx_result;
}

bool Main_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x306ae42a) {
		if (inClassId<=(int)0x25b00754) {
			if (inClassId<=(int)0x1e88cdcf) {
				return inClassId==(int)0x00000001 || inClassId==(int)0x1e88cdcf;
			} else {
				return inClassId==(int)0x25b00754;
			}
		} else {
			return inClassId==(int)0x306ae42a;
		}
	} else {
		if (inClassId<=(int)0x3d2d7617) {
			return inClassId==(int)0x332f6459 || inClassId==(int)0x3d2d7617;
		} else {
			return inClassId==(int)0x5fcdb6d3;
		}
	}
}

void Main_obj::init( ::openfl::_legacy::events::Event E){
            	HX_STACKFRAME(&_hx_pos_e47a9afac0942eb9_50_init)
HXLINE(  51)		if (this->hasEventListener(::openfl::_legacy::events::Event_obj::ADDED_TO_STAGE)) {
HXLINE(  53)			this->removeEventListener(::openfl::_legacy::events::Event_obj::ADDED_TO_STAGE,this->init_dyn(),null());
            		}
HXLINE(  56)		this->setupGame();
            	}


HX_DEFINE_DYNAMIC_FUNC1(Main_obj,init,(void))

void Main_obj::setupGame(){
            	HX_GC_STACKFRAME(&_hx_pos_e47a9afac0942eb9_60_setupGame)
HXLINE(  61)		int stageWidth = ::openfl::_legacy::Lib_obj::get_current()->get_stage()->get_stageWidth();
HXLINE(  62)		int stageHeight = ::openfl::_legacy::Lib_obj::get_current()->get_stage()->get_stageHeight();
HXLINE(  64)		if ((this->zoom == (int)-1)) {
HXLINE(  66)			Float ratioX = ((Float)stageWidth / (Float)this->gameWidth);
HXLINE(  67)			Float ratioY = ((Float)stageHeight / (Float)this->gameHeight);
HXLINE(  68)			this->zoom = ::Math_obj::min(ratioX,ratioY);
HXLINE(  69)			this->gameWidth = ::Math_obj::ceil(((Float)stageWidth / (Float)this->zoom));
HXLINE(  70)			this->gameHeight = ::Math_obj::ceil(((Float)stageHeight / (Float)this->zoom));
            		}
HXLINE(  73)		this->addChild( ::flixel::FlxGame_obj::__alloc( HX_CTX ,this->gameWidth,this->gameHeight,this->initialState,this->zoom,this->framerate,this->framerate,this->skipSplash,this->startFullscreen));
            	}


HX_DEFINE_DYNAMIC_FUNC0(Main_obj,setupGame,(void))

void Main_obj::main(){
            	HX_GC_STACKFRAME(&_hx_pos_e47a9afac0942eb9_28_main)
HXDLIN(  28)		 ::openfl::_legacy::display::MovieClip _hx_tmp = ::openfl::_legacy::Lib_obj::get_current();
HXDLIN(  28)		_hx_tmp->addChild( ::Main_obj::__alloc( HX_CTX ));
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC0(Main_obj,main,(void))


hx::ObjectPtr< Main_obj > Main_obj::__new() {
	hx::ObjectPtr< Main_obj > __this = new Main_obj();
	__this->__construct();
	return __this;
}

hx::ObjectPtr< Main_obj > Main_obj::__alloc(hx::Ctx *_hx_ctx) {
	Main_obj *__this = (Main_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(Main_obj), true, "Main"));
	*(void **)__this = Main_obj::_hx_vtable;
	__this->__construct();
	return __this;
}

Main_obj::Main_obj()
{
}

void Main_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Main);
	HX_MARK_MEMBER_NAME(gameWidth,"gameWidth");
	HX_MARK_MEMBER_NAME(gameHeight,"gameHeight");
	HX_MARK_MEMBER_NAME(initialState,"initialState");
	HX_MARK_MEMBER_NAME(zoom,"zoom");
	HX_MARK_MEMBER_NAME(framerate,"framerate");
	HX_MARK_MEMBER_NAME(skipSplash,"skipSplash");
	HX_MARK_MEMBER_NAME(startFullscreen,"startFullscreen");
	 ::openfl::_legacy::display::DisplayObjectContainer_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void Main_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(gameWidth,"gameWidth");
	HX_VISIT_MEMBER_NAME(gameHeight,"gameHeight");
	HX_VISIT_MEMBER_NAME(initialState,"initialState");
	HX_VISIT_MEMBER_NAME(zoom,"zoom");
	HX_VISIT_MEMBER_NAME(framerate,"framerate");
	HX_VISIT_MEMBER_NAME(skipSplash,"skipSplash");
	HX_VISIT_MEMBER_NAME(startFullscreen,"startFullscreen");
	 ::openfl::_legacy::display::DisplayObjectContainer_obj::__Visit(HX_VISIT_ARG);
}

hx::Val Main_obj::__Field(const ::String &inName,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"zoom") ) { return hx::Val( zoom ); }
		if (HX_FIELD_EQ(inName,"init") ) { return hx::Val( init_dyn() ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"gameWidth") ) { return hx::Val( gameWidth ); }
		if (HX_FIELD_EQ(inName,"framerate") ) { return hx::Val( framerate ); }
		if (HX_FIELD_EQ(inName,"setupGame") ) { return hx::Val( setupGame_dyn() ); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"gameHeight") ) { return hx::Val( gameHeight ); }
		if (HX_FIELD_EQ(inName,"skipSplash") ) { return hx::Val( skipSplash ); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"initialState") ) { return hx::Val( initialState ); }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"startFullscreen") ) { return hx::Val( startFullscreen ); }
	}
	return super::__Field(inName,inCallProp);
}

bool Main_obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"main") ) { outValue = main_dyn(); return true; }
	}
	return false;
}

hx::Val Main_obj::__SetField(const ::String &inName,const hx::Val &inValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"zoom") ) { zoom=inValue.Cast< Float >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"gameWidth") ) { gameWidth=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"framerate") ) { framerate=inValue.Cast< int >(); return inValue; }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"gameHeight") ) { gameHeight=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"skipSplash") ) { skipSplash=inValue.Cast< bool >(); return inValue; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"initialState") ) { initialState=inValue.Cast< hx::Class >(); return inValue; }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"startFullscreen") ) { startFullscreen=inValue.Cast< bool >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Main_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_HCSTRING("gameWidth","\xb4","\xa4","\x7d","\xff"));
	outFields->push(HX_HCSTRING("gameHeight","\x79","\xf1","\xc1","\x44"));
	outFields->push(HX_HCSTRING("initialState","\xed","\x76","\x1b","\x48"));
	outFields->push(HX_HCSTRING("zoom","\x13","\xa3","\xf8","\x50"));
	outFields->push(HX_HCSTRING("framerate","\x8d","\xe5","\x4b","\x4e"));
	outFields->push(HX_HCSTRING("skipSplash","\x46","\x75","\x9c","\x27"));
	outFields->push(HX_HCSTRING("startFullscreen","\x3d","\xc1","\xee","\x2d"));
	super::__GetFields(outFields);
};

#if HXCPP_SCRIPTABLE
static hx::StorageInfo Main_obj_sMemberStorageInfo[] = {
	{hx::fsInt,(int)offsetof(Main_obj,gameWidth),HX_HCSTRING("gameWidth","\xb4","\xa4","\x7d","\xff")},
	{hx::fsInt,(int)offsetof(Main_obj,gameHeight),HX_HCSTRING("gameHeight","\x79","\xf1","\xc1","\x44")},
	{hx::fsObject /*::hx::Class*/ ,(int)offsetof(Main_obj,initialState),HX_HCSTRING("initialState","\xed","\x76","\x1b","\x48")},
	{hx::fsFloat,(int)offsetof(Main_obj,zoom),HX_HCSTRING("zoom","\x13","\xa3","\xf8","\x50")},
	{hx::fsInt,(int)offsetof(Main_obj,framerate),HX_HCSTRING("framerate","\x8d","\xe5","\x4b","\x4e")},
	{hx::fsBool,(int)offsetof(Main_obj,skipSplash),HX_HCSTRING("skipSplash","\x46","\x75","\x9c","\x27")},
	{hx::fsBool,(int)offsetof(Main_obj,startFullscreen),HX_HCSTRING("startFullscreen","\x3d","\xc1","\xee","\x2d")},
	{ hx::fsUnknown, 0, null()}
};
static hx::StaticInfo *Main_obj_sStaticStorageInfo = 0;
#endif

static ::String Main_obj_sMemberFields[] = {
	HX_HCSTRING("gameWidth","\xb4","\xa4","\x7d","\xff"),
	HX_HCSTRING("gameHeight","\x79","\xf1","\xc1","\x44"),
	HX_HCSTRING("initialState","\xed","\x76","\x1b","\x48"),
	HX_HCSTRING("zoom","\x13","\xa3","\xf8","\x50"),
	HX_HCSTRING("framerate","\x8d","\xe5","\x4b","\x4e"),
	HX_HCSTRING("skipSplash","\x46","\x75","\x9c","\x27"),
	HX_HCSTRING("startFullscreen","\x3d","\xc1","\xee","\x2d"),
	HX_HCSTRING("init","\x10","\x3b","\xbb","\x45"),
	HX_HCSTRING("setupGame","\x0f","\x51","\xed","\x9e"),
	::String(null()) };

static void Main_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Main_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void Main_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Main_obj::__mClass,"__mClass");
};

#endif

hx::Class Main_obj::__mClass;

static ::String Main_obj_sStaticFields[] = {
	HX_HCSTRING("main","\x39","\x38","\x56","\x48"),
	::String(null())
};

void Main_obj::__register()
{
	hx::Object *dummy = new Main_obj;
	Main_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("Main","\x59","\x64","\x2f","\x33");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &Main_obj::__GetStatic;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mMarkFunc = Main_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(Main_obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(Main_obj_sMemberFields);
	__mClass->mCanCast = hx::TCanCast< Main_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = Main_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = Main_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = Main_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

