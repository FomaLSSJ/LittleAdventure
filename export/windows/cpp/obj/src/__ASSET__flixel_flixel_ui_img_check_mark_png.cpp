// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED___ASSET__flixel_flixel_ui_img_check_mark_png
#include <__ASSET__flixel_flixel_ui_img_check_mark_png.h>
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

HX_DEFINE_STACK_FRAME(_hx_pos_e2dcf3eaa217ee5b_2010_new,"__ASSET__flixel_flixel_ui_img_check_mark_png","new",0xfe81e957,"__ASSET__flixel_flixel_ui_img_check_mark_png.new","openfl/_legacy/Assets.hx",2010,0x9276b055)
HX_LOCAL_STACK_FRAME(_hx_pos_f8f937521e0ad88f_1_boot,"__ASSET__flixel_flixel_ui_img_check_mark_png","boot",0xab43435b,"__ASSET__flixel_flixel_ui_img_check_mark_png.boot","?",1,0x0000003f)

void __ASSET__flixel_flixel_ui_img_check_mark_png_obj::__construct(int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA){
 ::Dynamic transparent = __o_transparent.Default(true);
 ::Dynamic fillRGBA = __o_fillRGBA.Default(-1);
            	HX_STACKFRAME(&_hx_pos_e2dcf3eaa217ee5b_2010_new)
HXLINE(2076)		super::__construct(width,height,transparent,fillRGBA,null());
HXLINE(2078)		 ::openfl::_legacy::utils::ByteArray byteArray = ::openfl::_legacy::utils::ByteArray_obj::fromBytes(::haxe::Resource_obj::getBytes(::__ASSET__flixel_flixel_ui_img_check_mark_png_obj::resourceName));
HXLINE(2079)		this->_hx___handle = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_from_bytes(byteArray,null());
            	}

Dynamic __ASSET__flixel_flixel_ui_img_check_mark_png_obj::__CreateEmpty() { return new __ASSET__flixel_flixel_ui_img_check_mark_png_obj; }

void *__ASSET__flixel_flixel_ui_img_check_mark_png_obj::_hx_vtable = 0;

Dynamic __ASSET__flixel_flixel_ui_img_check_mark_png_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< __ASSET__flixel_flixel_ui_img_check_mark_png_obj > _hx_result = new __ASSET__flixel_flixel_ui_img_check_mark_png_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3]);
	return _hx_result;
}

bool __ASSET__flixel_flixel_ui_img_check_mark_png_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x0cd766e7) {
		return inClassId==(int)0x00000001 || inClassId==(int)0x0cd766e7;
	} else {
		return inClassId==(int)0x2036f1e5;
	}
}

::String __ASSET__flixel_flixel_ui_img_check_mark_png_obj::resourceName;


hx::ObjectPtr< __ASSET__flixel_flixel_ui_img_check_mark_png_obj > __ASSET__flixel_flixel_ui_img_check_mark_png_obj::__new(int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA) {
	hx::ObjectPtr< __ASSET__flixel_flixel_ui_img_check_mark_png_obj > __this = new __ASSET__flixel_flixel_ui_img_check_mark_png_obj();
	__this->__construct(width,height,__o_transparent,__o_fillRGBA);
	return __this;
}

hx::ObjectPtr< __ASSET__flixel_flixel_ui_img_check_mark_png_obj > __ASSET__flixel_flixel_ui_img_check_mark_png_obj::__alloc(hx::Ctx *_hx_ctx,int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA) {
	__ASSET__flixel_flixel_ui_img_check_mark_png_obj *__this = (__ASSET__flixel_flixel_ui_img_check_mark_png_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(__ASSET__flixel_flixel_ui_img_check_mark_png_obj), true, "__ASSET__flixel_flixel_ui_img_check_mark_png"));
	*(void **)__this = __ASSET__flixel_flixel_ui_img_check_mark_png_obj::_hx_vtable;
	__this->__construct(width,height,__o_transparent,__o_fillRGBA);
	return __this;
}

__ASSET__flixel_flixel_ui_img_check_mark_png_obj::__ASSET__flixel_flixel_ui_img_check_mark_png_obj()
{
}

bool __ASSET__flixel_flixel_ui_img_check_mark_png_obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 12:
		if (HX_FIELD_EQ(inName,"resourceName") ) { outValue = ( resourceName ); return true; }
	}
	return false;
}

bool __ASSET__flixel_flixel_ui_img_check_mark_png_obj::__SetStatic(const ::String &inName,Dynamic &ioValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 12:
		if (HX_FIELD_EQ(inName,"resourceName") ) { resourceName=ioValue.Cast< ::String >(); return true; }
	}
	return false;
}

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *__ASSET__flixel_flixel_ui_img_check_mark_png_obj_sMemberStorageInfo = 0;
static hx::StaticInfo __ASSET__flixel_flixel_ui_img_check_mark_png_obj_sStaticStorageInfo[] = {
	{hx::fsString,(void *) &__ASSET__flixel_flixel_ui_img_check_mark_png_obj::resourceName,HX_HCSTRING("resourceName","\x39","\x7a","\x62","\x90")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static void __ASSET__flixel_flixel_ui_img_check_mark_png_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(__ASSET__flixel_flixel_ui_img_check_mark_png_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(__ASSET__flixel_flixel_ui_img_check_mark_png_obj::resourceName,"resourceName");
};

#ifdef HXCPP_VISIT_ALLOCS
static void __ASSET__flixel_flixel_ui_img_check_mark_png_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(__ASSET__flixel_flixel_ui_img_check_mark_png_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(__ASSET__flixel_flixel_ui_img_check_mark_png_obj::resourceName,"resourceName");
};

#endif

hx::Class __ASSET__flixel_flixel_ui_img_check_mark_png_obj::__mClass;

static ::String __ASSET__flixel_flixel_ui_img_check_mark_png_obj_sStaticFields[] = {
	HX_HCSTRING("resourceName","\x39","\x7a","\x62","\x90"),
	::String(null())
};

void __ASSET__flixel_flixel_ui_img_check_mark_png_obj::__register()
{
	hx::Object *dummy = new __ASSET__flixel_flixel_ui_img_check_mark_png_obj;
	__ASSET__flixel_flixel_ui_img_check_mark_png_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("__ASSET__flixel_flixel_ui_img_check_mark_png","\xe5","\xf1","\x36","\x20");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &__ASSET__flixel_flixel_ui_img_check_mark_png_obj::__GetStatic;
	__mClass->mSetStaticField = &__ASSET__flixel_flixel_ui_img_check_mark_png_obj::__SetStatic;
	__mClass->mMarkFunc = __ASSET__flixel_flixel_ui_img_check_mark_png_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(__ASSET__flixel_flixel_ui_img_check_mark_png_obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = hx::TCanCast< __ASSET__flixel_flixel_ui_img_check_mark_png_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = __ASSET__flixel_flixel_ui_img_check_mark_png_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = __ASSET__flixel_flixel_ui_img_check_mark_png_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = __ASSET__flixel_flixel_ui_img_check_mark_png_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

void __ASSET__flixel_flixel_ui_img_check_mark_png_obj::__boot()
{
{
            	HX_STACKFRAME(&_hx_pos_f8f937521e0ad88f_1_boot)
HXDLIN(   1)		resourceName = HX_("__ASSET__:bitmap___ASSET__flixel_flixel_ui_img_check_mark_png",4b,b1,dd,61);
            	}
}

