// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_flixel_input_gamepad_mappings_Manufacturer
#include <flixel/input/gamepad/mappings/Manufacturer.h>
#endif
HX_LOCAL_STACK_FRAME(_hx_pos_b569b380ca8d168f_108_boot,"Manufacturer_obj","boot",0x8a661ed7,"Manufacturer_obj.boot","flixel/input/gamepad/mappings/FlxGamepadMapping.hx",108,0x5edd1803)
namespace flixel{
namespace input{
namespace gamepad{
namespace mappings{

::flixel::input::gamepad::mappings::Manufacturer Manufacturer_obj::AdobeWindows;

::flixel::input::gamepad::mappings::Manufacturer Manufacturer_obj::GooglePepper;

::flixel::input::gamepad::mappings::Manufacturer Manufacturer_obj::Unknown;

bool Manufacturer_obj::__GetStatic(const ::String &inName, ::Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	if (inName==HX_("AdobeWindows",74,f3,dd,6f)) { outValue = Manufacturer_obj::AdobeWindows; return true; }
	if (inName==HX_("GooglePepper",9b,cf,95,53)) { outValue = Manufacturer_obj::GooglePepper; return true; }
	if (inName==HX_("Unknown",6a,4b,cc,ae)) { outValue = Manufacturer_obj::Unknown; return true; }
	return super::__GetStatic(inName, outValue, inCallProp);
}

HX_DEFINE_CREATE_ENUM(Manufacturer_obj)

int Manufacturer_obj::__FindIndex(::String inName)
{
	if (inName==HX_("AdobeWindows",74,f3,dd,6f)) return 1;
	if (inName==HX_("GooglePepper",9b,cf,95,53)) return 0;
	if (inName==HX_("Unknown",6a,4b,cc,ae)) return 2;
	return super::__FindIndex(inName);
}

int Manufacturer_obj::__FindArgCount(::String inName)
{
	if (inName==HX_("AdobeWindows",74,f3,dd,6f)) return 0;
	if (inName==HX_("GooglePepper",9b,cf,95,53)) return 0;
	if (inName==HX_("Unknown",6a,4b,cc,ae)) return 0;
	return super::__FindArgCount(inName);
}

hx::Val Manufacturer_obj::__Field(const ::String &inName,hx::PropertyAccess inCallProp)
{
	if (inName==HX_("AdobeWindows",74,f3,dd,6f)) return AdobeWindows;
	if (inName==HX_("GooglePepper",9b,cf,95,53)) return GooglePepper;
	if (inName==HX_("Unknown",6a,4b,cc,ae)) return Unknown;
	return super::__Field(inName,inCallProp);
}

static ::String Manufacturer_obj_sStaticFields[] = {
	HX_("GooglePepper",9b,cf,95,53),
	HX_("AdobeWindows",74,f3,dd,6f),
	HX_("Unknown",6a,4b,cc,ae),
	::String(null())
};

static void Manufacturer_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Manufacturer_obj::AdobeWindows,"AdobeWindows");
	HX_MARK_MEMBER_NAME(Manufacturer_obj::GooglePepper,"GooglePepper");
	HX_MARK_MEMBER_NAME(Manufacturer_obj::Unknown,"Unknown");
};

#ifdef HXCPP_VISIT_ALLOCS
static void Manufacturer_obj_sVisitStatic(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Manufacturer_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(Manufacturer_obj::AdobeWindows,"AdobeWindows");
	HX_VISIT_MEMBER_NAME(Manufacturer_obj::GooglePepper,"GooglePepper");
	HX_VISIT_MEMBER_NAME(Manufacturer_obj::Unknown,"Unknown");
};
#endif

hx::Class Manufacturer_obj::__mClass;

Dynamic __Create_Manufacturer_obj() { return new Manufacturer_obj; }

void Manufacturer_obj::__register()
{

hx::Static(__mClass) = hx::_hx_RegisterClass(HX_HCSTRING("flixel.input.gamepad.mappings.Manufacturer","\xd7","\x3a","\x0b","\xc4"), hx::TCanCast< Manufacturer_obj >,Manufacturer_obj_sStaticFields,0,
	&__Create_Manufacturer_obj, &__Create,
	&super::__SGetClass(), &CreateManufacturer_obj, Manufacturer_obj_sMarkStatics
#ifdef HXCPP_VISIT_ALLOCS
    , Manufacturer_obj_sVisitStatic
#endif
#ifdef HXCPP_SCRIPTABLE
    , 0
#endif
);
	__mClass->mGetStaticField = &Manufacturer_obj::__GetStatic;
}

void Manufacturer_obj::__boot()
{
{
            	HX_STACKFRAME(&_hx_pos_b569b380ca8d168f_108_boot)
HXDLIN( 108)		__mClass->__meta__ =  ::Dynamic(hx::Anon_obj::Create(1)
            			->setFixed(0,HX_("obj",f7,8f,54,00), ::Dynamic(hx::Anon_obj::Create(1)
            				->setFixed(0,HX_("SuppressWarnings",0c,d3,d2,00),::cpp::VirtualArray_obj::__new(1)->init(0,HX_("checkstyle:MemberName",d6,25,7e,c4))))));
            	}
AdobeWindows = hx::CreateEnum< Manufacturer_obj >(HX_HCSTRING("AdobeWindows","\x74","\xf3","\xdd","\x6f"),1,0);
GooglePepper = hx::CreateEnum< Manufacturer_obj >(HX_HCSTRING("GooglePepper","\x9b","\xcf","\x95","\x53"),0,0);
Unknown = hx::CreateEnum< Manufacturer_obj >(HX_HCSTRING("Unknown","\x6a","\x4b","\xcc","\xae"),2,0);
}


} // end namespace flixel
} // end namespace input
} // end namespace gamepad
} // end namespace mappings
