// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_flixel_input_gamepad_FlxGamepadModel
#include <flixel/input/gamepad/FlxGamepadModel.h>
#endif
namespace flixel{
namespace input{
namespace gamepad{

::flixel::input::gamepad::FlxGamepadModel FlxGamepadModel_obj::LOGITECH;

::flixel::input::gamepad::FlxGamepadModel FlxGamepadModel_obj::MAYFLASH_WII_REMOTE;

::flixel::input::gamepad::FlxGamepadModel FlxGamepadModel_obj::MFI;

::flixel::input::gamepad::FlxGamepadModel FlxGamepadModel_obj::OUYA;

::flixel::input::gamepad::FlxGamepadModel FlxGamepadModel_obj::PS4;

::flixel::input::gamepad::FlxGamepadModel FlxGamepadModel_obj::PSVITA;

::flixel::input::gamepad::FlxGamepadModel FlxGamepadModel_obj::UNKNOWN;

::flixel::input::gamepad::FlxGamepadModel FlxGamepadModel_obj::WII_REMOTE;

::flixel::input::gamepad::FlxGamepadModel FlxGamepadModel_obj::XINPUT;

bool FlxGamepadModel_obj::__GetStatic(const ::String &inName, ::Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	if (inName==HX_("LOGITECH",3b,00,6b,73)) { outValue = FlxGamepadModel_obj::LOGITECH; return true; }
	if (inName==HX_("MAYFLASH_WII_REMOTE",22,7b,c7,b9)) { outValue = FlxGamepadModel_obj::MAYFLASH_WII_REMOTE; return true; }
	if (inName==HX_("MFI",d0,aa,3a,00)) { outValue = FlxGamepadModel_obj::MFI; return true; }
	if (inName==HX_("OUYA",6e,a8,78,34)) { outValue = FlxGamepadModel_obj::OUYA; return true; }
	if (inName==HX_("PS4",d1,fc,3c,00)) { outValue = FlxGamepadModel_obj::PS4; return true; }
	if (inName==HX_("PSVITA",e3,0a,df,ff)) { outValue = FlxGamepadModel_obj::PSVITA; return true; }
	if (inName==HX_("UNKNOWN",6a,f7,4e,61)) { outValue = FlxGamepadModel_obj::UNKNOWN; return true; }
	if (inName==HX_("WII_REMOTE",0e,91,0a,f5)) { outValue = FlxGamepadModel_obj::WII_REMOTE; return true; }
	if (inName==HX_("XINPUT",92,bc,73,6b)) { outValue = FlxGamepadModel_obj::XINPUT; return true; }
	return super::__GetStatic(inName, outValue, inCallProp);
}

HX_DEFINE_CREATE_ENUM(FlxGamepadModel_obj)

int FlxGamepadModel_obj::__FindIndex(::String inName)
{
	if (inName==HX_("LOGITECH",3b,00,6b,73)) return 0;
	if (inName==HX_("MAYFLASH_WII_REMOTE",22,7b,c7,b9)) return 5;
	if (inName==HX_("MFI",d0,aa,3a,00)) return 7;
	if (inName==HX_("OUYA",6e,a8,78,34)) return 1;
	if (inName==HX_("PS4",d1,fc,3c,00)) return 2;
	if (inName==HX_("PSVITA",e3,0a,df,ff)) return 3;
	if (inName==HX_("UNKNOWN",6a,f7,4e,61)) return 8;
	if (inName==HX_("WII_REMOTE",0e,91,0a,f5)) return 6;
	if (inName==HX_("XINPUT",92,bc,73,6b)) return 4;
	return super::__FindIndex(inName);
}

int FlxGamepadModel_obj::__FindArgCount(::String inName)
{
	if (inName==HX_("LOGITECH",3b,00,6b,73)) return 0;
	if (inName==HX_("MAYFLASH_WII_REMOTE",22,7b,c7,b9)) return 0;
	if (inName==HX_("MFI",d0,aa,3a,00)) return 0;
	if (inName==HX_("OUYA",6e,a8,78,34)) return 0;
	if (inName==HX_("PS4",d1,fc,3c,00)) return 0;
	if (inName==HX_("PSVITA",e3,0a,df,ff)) return 0;
	if (inName==HX_("UNKNOWN",6a,f7,4e,61)) return 0;
	if (inName==HX_("WII_REMOTE",0e,91,0a,f5)) return 0;
	if (inName==HX_("XINPUT",92,bc,73,6b)) return 0;
	return super::__FindArgCount(inName);
}

hx::Val FlxGamepadModel_obj::__Field(const ::String &inName,hx::PropertyAccess inCallProp)
{
	if (inName==HX_("LOGITECH",3b,00,6b,73)) return LOGITECH;
	if (inName==HX_("MAYFLASH_WII_REMOTE",22,7b,c7,b9)) return MAYFLASH_WII_REMOTE;
	if (inName==HX_("MFI",d0,aa,3a,00)) return MFI;
	if (inName==HX_("OUYA",6e,a8,78,34)) return OUYA;
	if (inName==HX_("PS4",d1,fc,3c,00)) return PS4;
	if (inName==HX_("PSVITA",e3,0a,df,ff)) return PSVITA;
	if (inName==HX_("UNKNOWN",6a,f7,4e,61)) return UNKNOWN;
	if (inName==HX_("WII_REMOTE",0e,91,0a,f5)) return WII_REMOTE;
	if (inName==HX_("XINPUT",92,bc,73,6b)) return XINPUT;
	return super::__Field(inName,inCallProp);
}

static ::String FlxGamepadModel_obj_sStaticFields[] = {
	HX_("LOGITECH",3b,00,6b,73),
	HX_("OUYA",6e,a8,78,34),
	HX_("PS4",d1,fc,3c,00),
	HX_("PSVITA",e3,0a,df,ff),
	HX_("XINPUT",92,bc,73,6b),
	HX_("MAYFLASH_WII_REMOTE",22,7b,c7,b9),
	HX_("WII_REMOTE",0e,91,0a,f5),
	HX_("MFI",d0,aa,3a,00),
	HX_("UNKNOWN",6a,f7,4e,61),
	::String(null())
};

static void FlxGamepadModel_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(FlxGamepadModel_obj::LOGITECH,"LOGITECH");
	HX_MARK_MEMBER_NAME(FlxGamepadModel_obj::MAYFLASH_WII_REMOTE,"MAYFLASH_WII_REMOTE");
	HX_MARK_MEMBER_NAME(FlxGamepadModel_obj::MFI,"MFI");
	HX_MARK_MEMBER_NAME(FlxGamepadModel_obj::OUYA,"OUYA");
	HX_MARK_MEMBER_NAME(FlxGamepadModel_obj::PS4,"PS4");
	HX_MARK_MEMBER_NAME(FlxGamepadModel_obj::PSVITA,"PSVITA");
	HX_MARK_MEMBER_NAME(FlxGamepadModel_obj::UNKNOWN,"UNKNOWN");
	HX_MARK_MEMBER_NAME(FlxGamepadModel_obj::WII_REMOTE,"WII_REMOTE");
	HX_MARK_MEMBER_NAME(FlxGamepadModel_obj::XINPUT,"XINPUT");
};

#ifdef HXCPP_VISIT_ALLOCS
static void FlxGamepadModel_obj_sVisitStatic(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(FlxGamepadModel_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(FlxGamepadModel_obj::LOGITECH,"LOGITECH");
	HX_VISIT_MEMBER_NAME(FlxGamepadModel_obj::MAYFLASH_WII_REMOTE,"MAYFLASH_WII_REMOTE");
	HX_VISIT_MEMBER_NAME(FlxGamepadModel_obj::MFI,"MFI");
	HX_VISIT_MEMBER_NAME(FlxGamepadModel_obj::OUYA,"OUYA");
	HX_VISIT_MEMBER_NAME(FlxGamepadModel_obj::PS4,"PS4");
	HX_VISIT_MEMBER_NAME(FlxGamepadModel_obj::PSVITA,"PSVITA");
	HX_VISIT_MEMBER_NAME(FlxGamepadModel_obj::UNKNOWN,"UNKNOWN");
	HX_VISIT_MEMBER_NAME(FlxGamepadModel_obj::WII_REMOTE,"WII_REMOTE");
	HX_VISIT_MEMBER_NAME(FlxGamepadModel_obj::XINPUT,"XINPUT");
};
#endif

hx::Class FlxGamepadModel_obj::__mClass;

Dynamic __Create_FlxGamepadModel_obj() { return new FlxGamepadModel_obj; }

void FlxGamepadModel_obj::__register()
{

hx::Static(__mClass) = hx::_hx_RegisterClass(HX_HCSTRING("flixel.input.gamepad.FlxGamepadModel","\xf7","\xd6","\x4b","\x41"), hx::TCanCast< FlxGamepadModel_obj >,FlxGamepadModel_obj_sStaticFields,0,
	&__Create_FlxGamepadModel_obj, &__Create,
	&super::__SGetClass(), &CreateFlxGamepadModel_obj, FlxGamepadModel_obj_sMarkStatics
#ifdef HXCPP_VISIT_ALLOCS
    , FlxGamepadModel_obj_sVisitStatic
#endif
#ifdef HXCPP_SCRIPTABLE
    , 0
#endif
);
	__mClass->mGetStaticField = &FlxGamepadModel_obj::__GetStatic;
}

void FlxGamepadModel_obj::__boot()
{
LOGITECH = hx::CreateEnum< FlxGamepadModel_obj >(HX_HCSTRING("LOGITECH","\x3b","\x00","\x6b","\x73"),0,0);
MAYFLASH_WII_REMOTE = hx::CreateEnum< FlxGamepadModel_obj >(HX_HCSTRING("MAYFLASH_WII_REMOTE","\x22","\x7b","\xc7","\xb9"),5,0);
MFI = hx::CreateEnum< FlxGamepadModel_obj >(HX_HCSTRING("MFI","\xd0","\xaa","\x3a","\x00"),7,0);
OUYA = hx::CreateEnum< FlxGamepadModel_obj >(HX_HCSTRING("OUYA","\x6e","\xa8","\x78","\x34"),1,0);
PS4 = hx::CreateEnum< FlxGamepadModel_obj >(HX_HCSTRING("PS4","\xd1","\xfc","\x3c","\x00"),2,0);
PSVITA = hx::CreateEnum< FlxGamepadModel_obj >(HX_HCSTRING("PSVITA","\xe3","\x0a","\xdf","\xff"),3,0);
UNKNOWN = hx::CreateEnum< FlxGamepadModel_obj >(HX_HCSTRING("UNKNOWN","\x6a","\xf7","\x4e","\x61"),8,0);
WII_REMOTE = hx::CreateEnum< FlxGamepadModel_obj >(HX_HCSTRING("WII_REMOTE","\x0e","\x91","\x0a","\xf5"),6,0);
XINPUT = hx::CreateEnum< FlxGamepadModel_obj >(HX_HCSTRING("XINPUT","\x92","\xbc","\x73","\x6b"),4,0);
}


} // end namespace flixel
} // end namespace input
} // end namespace gamepad
