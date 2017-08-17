// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxObject
#include <flixel/FlxObject.h>
#endif
#ifndef INCLUDED_flixel_IFlxBasic
#include <flixel/IFlxBasic.h>
#endif
#ifndef INCLUDED_flixel_IFlxSprite
#include <flixel/IFlxSprite.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_Anchor
#include <flixel/addons/ui/Anchor.h>
#endif
#ifndef INCLUDED_flixel_addons_ui__FlxUITooltipManager_FlxUITooltipEntry
#include <flixel/addons/ui/_FlxUITooltipManager/FlxUITooltipEntry.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IFlxUIButton
#include <flixel/addons/ui/interfaces/IFlxUIButton.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IFlxUIWidget
#include <flixel/addons/ui/interfaces/IFlxUIWidget.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IHasParams
#include <flixel/addons/ui/interfaces/IHasParams.h>
#endif
#ifndef INCLUDED_flixel_util_IFlxDestroyable
#include <flixel/util/IFlxDestroyable.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_ba596dbc4e329499_610_new,"flixel.addons.ui._FlxUITooltipManager.FlxUITooltipEntry","new",0x3b938adb,"flixel.addons.ui._FlxUITooltipManager.FlxUITooltipEntry.new","flixel/addons/ui/FlxUITooltipManager.hx",610,0x892d3fe0)
HX_LOCAL_STACK_FRAME(_hx_pos_ba596dbc4e329499_638_destroy,"flixel.addons.ui._FlxUITooltipManager.FlxUITooltipEntry","destroy",0xc57440f5,"flixel.addons.ui._FlxUITooltipManager.FlxUITooltipEntry.destroy","flixel/addons/ui/FlxUITooltipManager.hx",638,0x892d3fe0)
namespace flixel{
namespace addons{
namespace ui{
namespace _FlxUITooltipManager{

void FlxUITooltipEntry_obj::__construct(::Dynamic Btn, ::Dynamic Data, ::flixel::FlxObject Obj){
            	HX_STACKFRAME(&_hx_pos_ba596dbc4e329499_610_new)
HXLINE( 621)		this->sticky = false;
HXLINE( 625)		this->btn = Btn;
HXLINE( 626)		this->data = Data;
HXLINE( 627)		this->obj = Obj;
HXLINE( 628)		this->count = (int)0;
HXLINE( 629)		this->enabled = true;
HXLINE( 630)		if (hx::IsNotNull( this->data )) {
HXLINE( 632)			if (hx::IsNull( this->data->__Field(HX_("delay",83,d7,26,d7),hx::paccDynamic) )) {
HXLINE( 632)				this->data->__SetField(HX_("delay",83,d7,26,d7),(int)-1,hx::paccDynamic);
            			}
HXLINE( 633)			if (hx::IsNull( this->data->__Field(HX_("moving",8e,f2,af,cc),hx::paccDynamic) )) {
HXLINE( 633)				this->data->__SetField(HX_("moving",8e,f2,af,cc),false,hx::paccDynamic);
            			}
            		}
            	}

Dynamic FlxUITooltipEntry_obj::__CreateEmpty() { return new FlxUITooltipEntry_obj; }

void *FlxUITooltipEntry_obj::_hx_vtable = 0;

Dynamic FlxUITooltipEntry_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< FlxUITooltipEntry_obj > _hx_result = new FlxUITooltipEntry_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2]);
	return _hx_result;
}

bool FlxUITooltipEntry_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x001b2899;
}

static ::flixel::util::IFlxDestroyable_obj _hx_flixel_addons_ui__FlxUITooltipManager_FlxUITooltipEntry__hx_flixel_util_IFlxDestroyable= {
	( void (hx::Object::*)())&::flixel::addons::ui::_FlxUITooltipManager::FlxUITooltipEntry_obj::destroy,
};

void *FlxUITooltipEntry_obj::_hx_getInterface(int inHash) {
	switch(inHash) {
		case (int)0xd4fe2fcd: return &_hx_flixel_addons_ui__FlxUITooltipManager_FlxUITooltipEntry__hx_flixel_util_IFlxDestroyable;
	}
	#ifdef HXCPP_SCRIPTABLE
	return super::_hx_getInterface(inHash);
	#else
	return 0;
	#endif
}

void FlxUITooltipEntry_obj::destroy(){
            	HX_STACKFRAME(&_hx_pos_ba596dbc4e329499_638_destroy)
HXLINE( 639)		this->count = (int)0;
HXLINE( 640)		this->obj = null();
HXLINE( 641)		this->btn = null();
HXLINE( 642)		this->data->__SetField(HX_("anchor",75,3a,71,60),null(),hx::paccDynamic);
HXLINE( 643)		this->data->__SetField(HX_("style",31,a5,1d,84),null(),hx::paccDynamic);
HXLINE( 644)		this->data = null();
            	}


HX_DEFINE_DYNAMIC_FUNC0(FlxUITooltipEntry_obj,destroy,(void))


hx::ObjectPtr< FlxUITooltipEntry_obj > FlxUITooltipEntry_obj::__new(::Dynamic Btn, ::Dynamic Data, ::flixel::FlxObject Obj) {
	hx::ObjectPtr< FlxUITooltipEntry_obj > __this = new FlxUITooltipEntry_obj();
	__this->__construct(Btn,Data,Obj);
	return __this;
}

hx::ObjectPtr< FlxUITooltipEntry_obj > FlxUITooltipEntry_obj::__alloc(hx::Ctx *_hx_ctx,::Dynamic Btn, ::Dynamic Data, ::flixel::FlxObject Obj) {
	FlxUITooltipEntry_obj *__this = (FlxUITooltipEntry_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(FlxUITooltipEntry_obj), true, "flixel.addons.ui._FlxUITooltipManager.FlxUITooltipEntry"));
	*(void **)__this = FlxUITooltipEntry_obj::_hx_vtable;
	__this->__construct(Btn,Data,Obj);
	return __this;
}

FlxUITooltipEntry_obj::FlxUITooltipEntry_obj()
{
}

void FlxUITooltipEntry_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(FlxUITooltipEntry);
	HX_MARK_MEMBER_NAME(obj,"obj");
	HX_MARK_MEMBER_NAME(btn,"btn");
	HX_MARK_MEMBER_NAME(count,"count");
	HX_MARK_MEMBER_NAME(data,"data");
	HX_MARK_MEMBER_NAME(enabled,"enabled");
	HX_MARK_MEMBER_NAME(sticky,"sticky");
	HX_MARK_END_CLASS();
}

void FlxUITooltipEntry_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(obj,"obj");
	HX_VISIT_MEMBER_NAME(btn,"btn");
	HX_VISIT_MEMBER_NAME(count,"count");
	HX_VISIT_MEMBER_NAME(data,"data");
	HX_VISIT_MEMBER_NAME(enabled,"enabled");
	HX_VISIT_MEMBER_NAME(sticky,"sticky");
}

hx::Val FlxUITooltipEntry_obj::__Field(const ::String &inName,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 3:
		if (HX_FIELD_EQ(inName,"obj") ) { return hx::Val( obj ); }
		if (HX_FIELD_EQ(inName,"btn") ) { return hx::Val( btn ); }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"data") ) { return hx::Val( data ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"count") ) { return hx::Val( count ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"sticky") ) { return hx::Val( sticky ); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"enabled") ) { return hx::Val( enabled ); }
		if (HX_FIELD_EQ(inName,"destroy") ) { return hx::Val( destroy_dyn() ); }
	}
	return super::__Field(inName,inCallProp);
}

hx::Val FlxUITooltipEntry_obj::__SetField(const ::String &inName,const hx::Val &inValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 3:
		if (HX_FIELD_EQ(inName,"obj") ) { obj=inValue.Cast<  ::flixel::FlxObject >(); return inValue; }
		if (HX_FIELD_EQ(inName,"btn") ) { btn=inValue.Cast< ::Dynamic >(); return inValue; }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"data") ) { data=inValue.Cast<  ::Dynamic >(); return inValue; }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"count") ) { count=inValue.Cast< Float >(); return inValue; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"sticky") ) { sticky=inValue.Cast< bool >(); return inValue; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"enabled") ) { enabled=inValue.Cast< bool >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void FlxUITooltipEntry_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_HCSTRING("obj","\xf7","\x8f","\x54","\x00"));
	outFields->push(HX_HCSTRING("btn","\x5c","\xc2","\x4a","\x00"));
	outFields->push(HX_HCSTRING("count","\xcf","\x44","\x63","\x4a"));
	outFields->push(HX_HCSTRING("data","\x2a","\x56","\x63","\x42"));
	outFields->push(HX_HCSTRING("enabled","\x81","\x04","\x31","\x7e"));
	outFields->push(HX_HCSTRING("sticky","\x29","\xad","\x38","\x0b"));
	super::__GetFields(outFields);
};

#if HXCPP_SCRIPTABLE
static hx::StorageInfo FlxUITooltipEntry_obj_sMemberStorageInfo[] = {
	{hx::fsObject /*::flixel::FlxObject*/ ,(int)offsetof(FlxUITooltipEntry_obj,obj),HX_HCSTRING("obj","\xf7","\x8f","\x54","\x00")},
	{hx::fsObject /*::flixel::addons::ui::interfaces::IFlxUIButton*/ ,(int)offsetof(FlxUITooltipEntry_obj,btn),HX_HCSTRING("btn","\x5c","\xc2","\x4a","\x00")},
	{hx::fsFloat,(int)offsetof(FlxUITooltipEntry_obj,count),HX_HCSTRING("count","\xcf","\x44","\x63","\x4a")},
	{hx::fsObject /*Dynamic*/ ,(int)offsetof(FlxUITooltipEntry_obj,data),HX_HCSTRING("data","\x2a","\x56","\x63","\x42")},
	{hx::fsBool,(int)offsetof(FlxUITooltipEntry_obj,enabled),HX_HCSTRING("enabled","\x81","\x04","\x31","\x7e")},
	{hx::fsBool,(int)offsetof(FlxUITooltipEntry_obj,sticky),HX_HCSTRING("sticky","\x29","\xad","\x38","\x0b")},
	{ hx::fsUnknown, 0, null()}
};
static hx::StaticInfo *FlxUITooltipEntry_obj_sStaticStorageInfo = 0;
#endif

static ::String FlxUITooltipEntry_obj_sMemberFields[] = {
	HX_HCSTRING("obj","\xf7","\x8f","\x54","\x00"),
	HX_HCSTRING("btn","\x5c","\xc2","\x4a","\x00"),
	HX_HCSTRING("count","\xcf","\x44","\x63","\x4a"),
	HX_HCSTRING("data","\x2a","\x56","\x63","\x42"),
	HX_HCSTRING("enabled","\x81","\x04","\x31","\x7e"),
	HX_HCSTRING("sticky","\x29","\xad","\x38","\x0b"),
	HX_HCSTRING("destroy","\xfa","\x2c","\x86","\x24"),
	::String(null()) };

static void FlxUITooltipEntry_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(FlxUITooltipEntry_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void FlxUITooltipEntry_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(FlxUITooltipEntry_obj::__mClass,"__mClass");
};

#endif

hx::Class FlxUITooltipEntry_obj::__mClass;

void FlxUITooltipEntry_obj::__register()
{
	hx::Object *dummy = new FlxUITooltipEntry_obj;
	FlxUITooltipEntry_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("flixel.addons.ui._FlxUITooltipManager.FlxUITooltipEntry","\x69","\x81","\xf0","\xbe");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mMarkFunc = FlxUITooltipEntry_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = hx::Class_obj::dupFunctions(FlxUITooltipEntry_obj_sMemberFields);
	__mClass->mCanCast = hx::TCanCast< FlxUITooltipEntry_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = FlxUITooltipEntry_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = FlxUITooltipEntry_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = FlxUITooltipEntry_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace flixel
} // end namespace addons
} // end namespace ui
} // end namespace _FlxUITooltipManager
