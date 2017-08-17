// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_flixel_addons_editors_tiled_TiledImageLayer
#include <flixel/addons/editors/tiled/TiledImageLayer.h>
#endif
#ifndef INCLUDED_flixel_addons_editors_tiled_TiledLayer
#include <flixel/addons/editors/tiled/TiledLayer.h>
#endif
#ifndef INCLUDED_flixel_addons_editors_tiled_TiledLayerType
#include <flixel/addons/editors/tiled/TiledLayerType.h>
#endif
#ifndef INCLUDED_flixel_addons_editors_tiled_TiledMap
#include <flixel/addons/editors/tiled/TiledMap.h>
#endif
#ifndef INCLUDED_haxe_xml_Fast
#include <haxe/xml/Fast.h>
#endif
#ifndef INCLUDED_haxe_xml__Fast_AttribAccess
#include <haxe/xml/_Fast/AttribAccess.h>
#endif
#ifndef INCLUDED_haxe_xml__Fast_HasAttribAccess
#include <haxe/xml/_Fast/HasAttribAccess.h>
#endif
#ifndef INCLUDED_haxe_xml__Fast_NodeAccess
#include <haxe/xml/_Fast/NodeAccess.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_e39e3898fd6c7d6a_12_new,"flixel.addons.editors.tiled.TiledImageLayer","new",0x82af5f35,"flixel.addons.editors.tiled.TiledImageLayer.new","flixel/addons/editors/tiled/TiledImageLayer.hx",12,0xc6ee7f3d)
namespace flixel{
namespace addons{
namespace editors{
namespace tiled{

void TiledImageLayer_obj::__construct( ::haxe::xml::Fast source, ::flixel::addons::editors::tiled::TiledMap parent){
            	HX_STACKFRAME(&_hx_pos_e39e3898fd6c7d6a_12_new)
HXLINE(  13)		super::__construct(source,parent);
HXLINE(  14)		this->type = ::flixel::addons::editors::tiled::TiledLayerType_obj::IMAGE_dyn();
HXLINE(  15)		this->imagePath = source->node->resolve(HX_("image",5b,1f,69,bd))->att->resolve(HX_("source",db,b0,31,32));
HXLINE(  16)		int _hx_tmp;
HXDLIN(  16)		if (source->has->resolve(HX_("x",78,00,00,00))) {
HXLINE(  16)			_hx_tmp = ::Std_obj::parseInt(source->att->resolve(HX_("x",78,00,00,00)));
            		}
            		else {
HXLINE(  16)			_hx_tmp = (int)0;
            		}
HXDLIN(  16)		this->x = _hx_tmp;
HXLINE(  17)		int _hx_tmp1;
HXDLIN(  17)		if (source->has->resolve(HX_("y",79,00,00,00))) {
HXLINE(  17)			_hx_tmp1 = ::Std_obj::parseInt(source->att->resolve(HX_("y",79,00,00,00)));
            		}
            		else {
HXLINE(  17)			_hx_tmp1 = (int)0;
            		}
HXDLIN(  17)		this->y = _hx_tmp1;
            	}

Dynamic TiledImageLayer_obj::__CreateEmpty() { return new TiledImageLayer_obj; }

void *TiledImageLayer_obj::_hx_vtable = 0;

Dynamic TiledImageLayer_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< TiledImageLayer_obj > _hx_result = new TiledImageLayer_obj();
	_hx_result->__construct(inArgs[0],inArgs[1]);
	return _hx_result;
}

bool TiledImageLayer_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x01a2c1e5) {
		return inClassId==(int)0x00000001 || inClassId==(int)0x01a2c1e5;
	} else {
		return inClassId==(int)0x6b7893fa;
	}
}


hx::ObjectPtr< TiledImageLayer_obj > TiledImageLayer_obj::__new( ::haxe::xml::Fast source, ::flixel::addons::editors::tiled::TiledMap parent) {
	hx::ObjectPtr< TiledImageLayer_obj > __this = new TiledImageLayer_obj();
	__this->__construct(source,parent);
	return __this;
}

hx::ObjectPtr< TiledImageLayer_obj > TiledImageLayer_obj::__alloc(hx::Ctx *_hx_ctx, ::haxe::xml::Fast source, ::flixel::addons::editors::tiled::TiledMap parent) {
	TiledImageLayer_obj *__this = (TiledImageLayer_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(TiledImageLayer_obj), true, "flixel.addons.editors.tiled.TiledImageLayer"));
	*(void **)__this = TiledImageLayer_obj::_hx_vtable;
	__this->__construct(source,parent);
	return __this;
}

TiledImageLayer_obj::TiledImageLayer_obj()
{
}

void TiledImageLayer_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(TiledImageLayer);
	HX_MARK_MEMBER_NAME(imagePath,"imagePath");
	HX_MARK_MEMBER_NAME(x,"x");
	HX_MARK_MEMBER_NAME(y,"y");
	 ::flixel::addons::editors::tiled::TiledLayer_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void TiledImageLayer_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(imagePath,"imagePath");
	HX_VISIT_MEMBER_NAME(x,"x");
	HX_VISIT_MEMBER_NAME(y,"y");
	 ::flixel::addons::editors::tiled::TiledLayer_obj::__Visit(HX_VISIT_ARG);
}

hx::Val TiledImageLayer_obj::__Field(const ::String &inName,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 1:
		if (HX_FIELD_EQ(inName,"x") ) { return hx::Val( x ); }
		if (HX_FIELD_EQ(inName,"y") ) { return hx::Val( y ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"imagePath") ) { return hx::Val( imagePath ); }
	}
	return super::__Field(inName,inCallProp);
}

hx::Val TiledImageLayer_obj::__SetField(const ::String &inName,const hx::Val &inValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 1:
		if (HX_FIELD_EQ(inName,"x") ) { x=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"y") ) { y=inValue.Cast< int >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"imagePath") ) { imagePath=inValue.Cast< ::String >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void TiledImageLayer_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_HCSTRING("imagePath","\xa0","\x7a","\x86","\x2c"));
	outFields->push(HX_HCSTRING("x","\x78","\x00","\x00","\x00"));
	outFields->push(HX_HCSTRING("y","\x79","\x00","\x00","\x00"));
	super::__GetFields(outFields);
};

#if HXCPP_SCRIPTABLE
static hx::StorageInfo TiledImageLayer_obj_sMemberStorageInfo[] = {
	{hx::fsString,(int)offsetof(TiledImageLayer_obj,imagePath),HX_HCSTRING("imagePath","\xa0","\x7a","\x86","\x2c")},
	{hx::fsInt,(int)offsetof(TiledImageLayer_obj,x),HX_HCSTRING("x","\x78","\x00","\x00","\x00")},
	{hx::fsInt,(int)offsetof(TiledImageLayer_obj,y),HX_HCSTRING("y","\x79","\x00","\x00","\x00")},
	{ hx::fsUnknown, 0, null()}
};
static hx::StaticInfo *TiledImageLayer_obj_sStaticStorageInfo = 0;
#endif

static ::String TiledImageLayer_obj_sMemberFields[] = {
	HX_HCSTRING("imagePath","\xa0","\x7a","\x86","\x2c"),
	HX_HCSTRING("x","\x78","\x00","\x00","\x00"),
	HX_HCSTRING("y","\x79","\x00","\x00","\x00"),
	::String(null()) };

static void TiledImageLayer_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(TiledImageLayer_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void TiledImageLayer_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(TiledImageLayer_obj::__mClass,"__mClass");
};

#endif

hx::Class TiledImageLayer_obj::__mClass;

void TiledImageLayer_obj::__register()
{
	hx::Object *dummy = new TiledImageLayer_obj;
	TiledImageLayer_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("flixel.addons.editors.tiled.TiledImageLayer","\xc3","\xa0","\x00","\x00");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mMarkFunc = TiledImageLayer_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = hx::Class_obj::dupFunctions(TiledImageLayer_obj_sMemberFields);
	__mClass->mCanCast = hx::TCanCast< TiledImageLayer_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = TiledImageLayer_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = TiledImageLayer_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = TiledImageLayer_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace flixel
} // end namespace addons
} // end namespace editors
} // end namespace tiled
