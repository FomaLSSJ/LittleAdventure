// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_flixel_system_debug_interaction_tools_GraphicMoverTool
#include <flixel/system/debug/interaction/tools/GraphicMoverTool.h>
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

HX_DEFINE_STACK_FRAME(_hx_pos_81f2e822385fa7eb_2010_new,"flixel.system.debug.interaction.tools.GraphicMoverTool","new",0x5d2174da,"flixel.system.debug.interaction.tools.GraphicMoverTool.new","openfl/_legacy/Assets.hx",2010,0x9276b055)
HX_LOCAL_STACK_FRAME(_hx_pos_ed6eb6e0daea6016_1_boot,"flixel.system.debug.interaction.tools.GraphicMoverTool","boot",0x183dca78,"flixel.system.debug.interaction.tools.GraphicMoverTool.boot","?",1,0x0000003f)
namespace flixel{
namespace _hx_system{
namespace debug{
namespace interaction{
namespace tools{

void GraphicMoverTool_obj::__construct(int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA){
 ::Dynamic transparent = __o_transparent.Default(true);
 ::Dynamic fillRGBA = __o_fillRGBA.Default(-1);
            	HX_STACKFRAME(&_hx_pos_81f2e822385fa7eb_2010_new)
HXLINE(2076)		super::__construct(width,height,transparent,fillRGBA,null());
HXLINE(2078)		 ::openfl::_legacy::utils::ByteArray byteArray = ::openfl::_legacy::utils::ByteArray_obj::fromBytes(::haxe::Resource_obj::getBytes(::flixel::_hx_system::debug::interaction::tools::GraphicMoverTool_obj::resourceName));
HXLINE(2079)		this->_hx___handle = ::openfl::_legacy::display::BitmapData_obj::lime_bitmap_data_from_bytes(byteArray,null());
            	}

Dynamic GraphicMoverTool_obj::__CreateEmpty() { return new GraphicMoverTool_obj; }

void *GraphicMoverTool_obj::_hx_vtable = 0;

Dynamic GraphicMoverTool_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< GraphicMoverTool_obj > _hx_result = new GraphicMoverTool_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3]);
	return _hx_result;
}

bool GraphicMoverTool_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x0c816302) {
		return inClassId==(int)0x00000001 || inClassId==(int)0x0c816302;
	} else {
		return inClassId==(int)0x0cd766e7;
	}
}

::String GraphicMoverTool_obj::resourceName;


hx::ObjectPtr< GraphicMoverTool_obj > GraphicMoverTool_obj::__new(int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA) {
	hx::ObjectPtr< GraphicMoverTool_obj > __this = new GraphicMoverTool_obj();
	__this->__construct(width,height,__o_transparent,__o_fillRGBA);
	return __this;
}

hx::ObjectPtr< GraphicMoverTool_obj > GraphicMoverTool_obj::__alloc(hx::Ctx *_hx_ctx,int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA) {
	GraphicMoverTool_obj *__this = (GraphicMoverTool_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(GraphicMoverTool_obj), true, "flixel.system.debug.interaction.tools.GraphicMoverTool"));
	*(void **)__this = GraphicMoverTool_obj::_hx_vtable;
	__this->__construct(width,height,__o_transparent,__o_fillRGBA);
	return __this;
}

GraphicMoverTool_obj::GraphicMoverTool_obj()
{
}

bool GraphicMoverTool_obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 12:
		if (HX_FIELD_EQ(inName,"resourceName") ) { outValue = ( resourceName ); return true; }
	}
	return false;
}

bool GraphicMoverTool_obj::__SetStatic(const ::String &inName,Dynamic &ioValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 12:
		if (HX_FIELD_EQ(inName,"resourceName") ) { resourceName=ioValue.Cast< ::String >(); return true; }
	}
	return false;
}

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *GraphicMoverTool_obj_sMemberStorageInfo = 0;
static hx::StaticInfo GraphicMoverTool_obj_sStaticStorageInfo[] = {
	{hx::fsString,(void *) &GraphicMoverTool_obj::resourceName,HX_HCSTRING("resourceName","\x39","\x7a","\x62","\x90")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static void GraphicMoverTool_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(GraphicMoverTool_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(GraphicMoverTool_obj::resourceName,"resourceName");
};

#ifdef HXCPP_VISIT_ALLOCS
static void GraphicMoverTool_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(GraphicMoverTool_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(GraphicMoverTool_obj::resourceName,"resourceName");
};

#endif

hx::Class GraphicMoverTool_obj::__mClass;

static ::String GraphicMoverTool_obj_sStaticFields[] = {
	HX_HCSTRING("resourceName","\x39","\x7a","\x62","\x90"),
	::String(null())
};

void GraphicMoverTool_obj::__register()
{
	hx::Object *dummy = new GraphicMoverTool_obj;
	GraphicMoverTool_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("flixel.system.debug.interaction.tools.GraphicMoverTool","\xe8","\xbf","\x23","\x53");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &GraphicMoverTool_obj::__GetStatic;
	__mClass->mSetStaticField = &GraphicMoverTool_obj::__SetStatic;
	__mClass->mMarkFunc = GraphicMoverTool_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(GraphicMoverTool_obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = hx::TCanCast< GraphicMoverTool_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = GraphicMoverTool_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = GraphicMoverTool_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = GraphicMoverTool_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

void GraphicMoverTool_obj::__boot()
{
{
            	HX_STACKFRAME(&_hx_pos_ed6eb6e0daea6016_1_boot)
HXDLIN(   1)		resourceName = HX_("__ASSET__:bitmap_flixel_system_debug_interaction_tools_GraphicMoverTool",81,a4,f3,1e);
            	}
}

} // end namespace flixel
} // end namespace system
} // end namespace debug
} // end namespace interaction
} // end namespace tools
