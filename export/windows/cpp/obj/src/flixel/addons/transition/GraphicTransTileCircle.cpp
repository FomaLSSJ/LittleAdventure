// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_flixel_addons_transition_GraphicTransTileCircle
#include <flixel/addons/transition/GraphicTransTileCircle.h>
#endif
#ifndef INCLUDED_haxe_Resource
#include <haxe/Resource.h>
#endif
#ifndef INCLUDED_haxe_io_Bytes
#include <haxe/io/Bytes.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_BitmapData
#include <openfl/_legacy/display/BitmapData.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_IBitmapDrawable
#include <openfl/_legacy/display/IBitmapDrawable.h>
#endif
#ifndef INCLUDED_openfl__legacy_utils_ByteArray
#include <openfl/_legacy/utils/ByteArray.h>
#endif
#ifndef INCLUDED_openfl__legacy_utils_IDataInput
#include <openfl/_legacy/utils/IDataInput.h>
#endif
#ifndef INCLUDED_openfl__legacy_utils_IDataOutput
#include <openfl/_legacy/utils/IDataOutput.h>
#endif
#ifndef INCLUDED_openfl__legacy_utils_IMemoryRange
#include <openfl/_legacy/utils/IMemoryRange.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_5a44ac4631e3d82b_2010_new,"flixel.addons.transition.GraphicTransTileCircle","new",0xafade640,"flixel.addons.transition.GraphicTransTileCircle.new","openfl/_legacy/Assets.hx",2010,0x9276b055)
HX_LOCAL_STACK_FRAME(_hx_pos_b87c2629ea53f92d_1_boot,"flixel.addons.transition.GraphicTransTileCircle","boot",0x00949252,"flixel.addons.transition.GraphicTransTileCircle.boot","?",1,0x0000003f)
namespace flixel{
namespace addons{
namespace transition{

void GraphicTransTileCircle_obj::__construct(int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA){
 ::Dynamic transparent = __o_transparent.Default(true);
 ::Dynamic fillRGBA = __o_fillRGBA.Default(-1);
            	HX_STACKFRAME(&_hx_pos_5a44ac4631e3d82b_2010_new)
HXLINE(2076)		super::__construct(width,height,transparent,fillRGBA,null());
HXLINE(2078)		 ::openfl::_legacy::utils::ByteArray byteArray = ::openfl::_legacy::utils::ByteArray_obj::fromBytes(::haxe::Resource_obj::getBytes(::flixel::addons::transition::GraphicTransTileCircle_obj::resourceName));
HXLINE(2079)		this->_hx___handle = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_from_bytes(byteArray,null());
            	}

Dynamic GraphicTransTileCircle_obj::__CreateEmpty() { return new GraphicTransTileCircle_obj; }

void *GraphicTransTileCircle_obj::_hx_vtable = 0;

Dynamic GraphicTransTileCircle_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< GraphicTransTileCircle_obj > _hx_result = new GraphicTransTileCircle_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3]);
	return _hx_result;
}

bool GraphicTransTileCircle_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x0cd766e7) {
		return inClassId==(int)0x00000001 || inClassId==(int)0x0cd766e7;
	} else {
		return inClassId==(int)0x4f7ad222;
	}
}

::String GraphicTransTileCircle_obj::resourceName;


hx::ObjectPtr< GraphicTransTileCircle_obj > GraphicTransTileCircle_obj::__new(int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA) {
	hx::ObjectPtr< GraphicTransTileCircle_obj > __this = new GraphicTransTileCircle_obj();
	__this->__construct(width,height,__o_transparent,__o_fillRGBA);
	return __this;
}

hx::ObjectPtr< GraphicTransTileCircle_obj > GraphicTransTileCircle_obj::__alloc(hx::Ctx *_hx_ctx,int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA) {
	GraphicTransTileCircle_obj *__this = (GraphicTransTileCircle_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(GraphicTransTileCircle_obj), true, "flixel.addons.transition.GraphicTransTileCircle"));
	*(void **)__this = GraphicTransTileCircle_obj::_hx_vtable;
	__this->__construct(width,height,__o_transparent,__o_fillRGBA);
	return __this;
}

GraphicTransTileCircle_obj::GraphicTransTileCircle_obj()
{
}

bool GraphicTransTileCircle_obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 12:
		if (HX_FIELD_EQ(inName,"resourceName") ) { outValue = ( resourceName ); return true; }
	}
	return false;
}

bool GraphicTransTileCircle_obj::__SetStatic(const ::String &inName,Dynamic &ioValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 12:
		if (HX_FIELD_EQ(inName,"resourceName") ) { resourceName=ioValue.Cast< ::String >(); return true; }
	}
	return false;
}

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *GraphicTransTileCircle_obj_sMemberStorageInfo = 0;
static hx::StaticInfo GraphicTransTileCircle_obj_sStaticStorageInfo[] = {
	{hx::fsString,(void *) &GraphicTransTileCircle_obj::resourceName,HX_HCSTRING("resourceName","\x39","\x7a","\x62","\x90")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static void GraphicTransTileCircle_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(GraphicTransTileCircle_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(GraphicTransTileCircle_obj::resourceName,"resourceName");
};

#ifdef HXCPP_VISIT_ALLOCS
static void GraphicTransTileCircle_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(GraphicTransTileCircle_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(GraphicTransTileCircle_obj::resourceName,"resourceName");
};

#endif

hx::Class GraphicTransTileCircle_obj::__mClass;

static ::String GraphicTransTileCircle_obj_sStaticFields[] = {
	HX_HCSTRING("resourceName","\x39","\x7a","\x62","\x90"),
	::String(null())
};

void GraphicTransTileCircle_obj::__register()
{
	hx::Object *dummy = new GraphicTransTileCircle_obj;
	GraphicTransTileCircle_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("flixel.addons.transition.GraphicTransTileCircle","\x4e","\x06","\x36","\x6d");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &GraphicTransTileCircle_obj::__GetStatic;
	__mClass->mSetStaticField = &GraphicTransTileCircle_obj::__SetStatic;
	__mClass->mMarkFunc = GraphicTransTileCircle_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(GraphicTransTileCircle_obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = hx::TCanCast< GraphicTransTileCircle_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = GraphicTransTileCircle_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = GraphicTransTileCircle_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = GraphicTransTileCircle_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

void GraphicTransTileCircle_obj::__boot()
{
{
            	HX_STACKFRAME(&_hx_pos_b87c2629ea53f92d_1_boot)
HXDLIN(   1)		resourceName = HX_("__ASSET__:bitmap_flixel_addons_transition_GraphicTransTileCircle",79,9b,85,6a);
            	}
}

} // end namespace flixel
} // end namespace addons
} // end namespace transition
