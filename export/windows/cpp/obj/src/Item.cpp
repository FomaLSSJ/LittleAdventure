// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_Item
#include <Item.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxObject
#include <flixel/FlxObject.h>
#endif
#ifndef INCLUDED_flixel_FlxSprite
#include <flixel/FlxSprite.h>
#endif
#ifndef INCLUDED_flixel_util_IFlxDestroyable
#include <flixel/util/IFlxDestroyable.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_ccf40b0d928fbae4_13_new,"Item","new",0x6a90a7a5,"Item.new","Item.hx",13,0xacacd36b)

void Item_obj::__construct(::String Name, ::Dynamic __o_Multiple, ::Dynamic __o_Count, ::Dynamic __o_X, ::Dynamic __o_Y, ::Dynamic SimpleGraphic){
 ::Dynamic Multiple = __o_Multiple.Default(false);
 ::Dynamic Count = __o_Count.Default(1);
 ::Dynamic X = __o_X.Default(0);
 ::Dynamic Y = __o_Y.Default(0);
            	HX_STACKFRAME(&_hx_pos_ccf40b0d928fbae4_13_new)
HXLINE(  14)		super::__construct((int)0,(int)0,SimpleGraphic);
HXLINE(  16)		this->name = Name;
HXLINE(  17)		this->count = Count;
HXLINE(  18)		this->multiple = Multiple;
            	}

Dynamic Item_obj::__CreateEmpty() { return new Item_obj; }

void *Item_obj::_hx_vtable = 0;

Dynamic Item_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< Item_obj > _hx_result = new Item_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3],inArgs[4],inArgs[5]);
	return _hx_result;
}

bool Item_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x25a685e0) {
		if (inClassId<=(int)0x0b6ffd77) {
			return inClassId==(int)0x00000001 || inClassId==(int)0x0b6ffd77;
		} else {
			return inClassId==(int)0x25a685e0;
		}
	} else {
		return inClassId==(int)0x2e105115 || inClassId==(int)0x3098f133;
	}
}


hx::ObjectPtr< Item_obj > Item_obj::__new(::String Name, ::Dynamic __o_Multiple, ::Dynamic __o_Count, ::Dynamic __o_X, ::Dynamic __o_Y, ::Dynamic SimpleGraphic) {
	hx::ObjectPtr< Item_obj > __this = new Item_obj();
	__this->__construct(Name,__o_Multiple,__o_Count,__o_X,__o_Y,SimpleGraphic);
	return __this;
}

hx::ObjectPtr< Item_obj > Item_obj::__alloc(hx::Ctx *_hx_ctx,::String Name, ::Dynamic __o_Multiple, ::Dynamic __o_Count, ::Dynamic __o_X, ::Dynamic __o_Y, ::Dynamic SimpleGraphic) {
	Item_obj *__this = (Item_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(Item_obj), true, "Item"));
	*(void **)__this = Item_obj::_hx_vtable;
	__this->__construct(Name,__o_Multiple,__o_Count,__o_X,__o_Y,SimpleGraphic);
	return __this;
}

Item_obj::Item_obj()
{
}

void Item_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Item);
	HX_MARK_MEMBER_NAME(name,"name");
	HX_MARK_MEMBER_NAME(multiple,"multiple");
	HX_MARK_MEMBER_NAME(count,"count");
	 ::flixel::FlxSprite_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void Item_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(name,"name");
	HX_VISIT_MEMBER_NAME(multiple,"multiple");
	HX_VISIT_MEMBER_NAME(count,"count");
	 ::flixel::FlxSprite_obj::__Visit(HX_VISIT_ARG);
}

hx::Val Item_obj::__Field(const ::String &inName,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"name") ) { return hx::Val( name ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"count") ) { return hx::Val( count ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"multiple") ) { return hx::Val( multiple ); }
	}
	return super::__Field(inName,inCallProp);
}

hx::Val Item_obj::__SetField(const ::String &inName,const hx::Val &inValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"name") ) { name=inValue.Cast< ::String >(); return inValue; }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"count") ) { count=inValue.Cast< int >(); return inValue; }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"multiple") ) { multiple=inValue.Cast< bool >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Item_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_HCSTRING("name","\x4b","\x72","\xff","\x48"));
	outFields->push(HX_HCSTRING("multiple","\x10","\xe2","\x8c","\x9a"));
	outFields->push(HX_HCSTRING("count","\xcf","\x44","\x63","\x4a"));
	super::__GetFields(outFields);
};

#if HXCPP_SCRIPTABLE
static hx::StorageInfo Item_obj_sMemberStorageInfo[] = {
	{hx::fsString,(int)offsetof(Item_obj,name),HX_HCSTRING("name","\x4b","\x72","\xff","\x48")},
	{hx::fsBool,(int)offsetof(Item_obj,multiple),HX_HCSTRING("multiple","\x10","\xe2","\x8c","\x9a")},
	{hx::fsInt,(int)offsetof(Item_obj,count),HX_HCSTRING("count","\xcf","\x44","\x63","\x4a")},
	{ hx::fsUnknown, 0, null()}
};
static hx::StaticInfo *Item_obj_sStaticStorageInfo = 0;
#endif

static ::String Item_obj_sMemberFields[] = {
	HX_HCSTRING("name","\x4b","\x72","\xff","\x48"),
	HX_HCSTRING("multiple","\x10","\xe2","\x8c","\x9a"),
	HX_HCSTRING("count","\xcf","\x44","\x63","\x4a"),
	::String(null()) };

static void Item_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Item_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void Item_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Item_obj::__mClass,"__mClass");
};

#endif

hx::Class Item_obj::__mClass;

void Item_obj::__register()
{
	hx::Object *dummy = new Item_obj;
	Item_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("Item","\x33","\xf1","\x98","\x30");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mMarkFunc = Item_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = hx::Class_obj::dupFunctions(Item_obj_sMemberFields);
	__mClass->mCanCast = hx::TCanCast< Item_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = Item_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = Item_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = Item_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

