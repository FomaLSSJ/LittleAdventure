// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_flixel_IFlxBasic
#include <flixel/IFlxBasic.h>
#endif
#ifndef INCLUDED_flixel_IFlxSprite
#include <flixel/IFlxSprite.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IFlxUIWidget
#include <flixel/addons/ui/interfaces/IFlxUIWidget.h>
#endif

namespace flixel{
namespace addons{
namespace ui{
namespace interfaces{


static ::String IFlxUIWidget_obj_sMemberFields[] = {
	HX_HCSTRING("get_width","\x5d","\x12","\x0c","\x0e"),
	HX_HCSTRING("set_width","\x69","\xfe","\x5c","\xf1"),
	HX_HCSTRING("get_height","\xb0","\x77","\xd3","\xf2"),
	HX_HCSTRING("set_height","\x24","\x16","\x51","\xf6"),
	HX_HCSTRING("name","\x4b","\x72","\xff","\x48"),
	HX_HCSTRING("broadcastToFlxUI","\xca","\x32","\x56","\x1a"),
	::String(null()) };

static void IFlxUIWidget_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(IFlxUIWidget_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void IFlxUIWidget_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(IFlxUIWidget_obj::__mClass,"__mClass");
};

#endif

hx::Class IFlxUIWidget_obj::__mClass;

void IFlxUIWidget_obj::__register()
{
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("flixel.addons.ui.interfaces.IFlxUIWidget","\x24","\xab","\xfb","\x29");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mMarkFunc = IFlxUIWidget_obj_sMarkStatics;
	__mClass->mMembers = hx::Class_obj::dupFunctions(IFlxUIWidget_obj_sMemberFields);
	__mClass->mCanCast = hx::TIsInterface< (int)0x998525de >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = IFlxUIWidget_obj_sVisitStatics;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace flixel
} // end namespace addons
} // end namespace ui
} // end namespace interfaces
