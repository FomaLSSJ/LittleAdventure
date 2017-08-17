// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_95f339a1d026d52c
#define INCLUDED_95f339a1d026d52c
#include "hxMath.h"
#endif
#ifndef INCLUDED_Std
#include <Std.h>
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
#ifndef INCLUDED_flixel_addons_transition_FlxTransitionSprite
#include <flixel/addons/transition/FlxTransitionSprite.h>
#endif
#ifndef INCLUDED_flixel_addons_transition_TransitionData
#include <flixel/addons/transition/TransitionData.h>
#endif
#ifndef INCLUDED_flixel_addons_transition_TransitionEffect
#include <flixel/addons/transition/TransitionEffect.h>
#endif
#ifndef INCLUDED_flixel_addons_transition_TransitionTiles
#include <flixel/addons/transition/TransitionTiles.h>
#endif
#ifndef INCLUDED_flixel_group_FlxTypedGroup
#include <flixel/group/FlxTypedGroup.h>
#endif
#ifndef INCLUDED_flixel_group_FlxTypedSpriteGroup
#include <flixel/group/FlxTypedSpriteGroup.h>
#endif
#ifndef INCLUDED_flixel_math_FlxPoint
#include <flixel/math/FlxPoint.h>
#endif
#ifndef INCLUDED_flixel_math_FlxRect
#include <flixel/math/FlxRect.h>
#endif
#ifndef INCLUDED_flixel_util_IFlxDestroyable
#include <flixel/util/IFlxDestroyable.h>
#endif
#ifndef INCLUDED_flixel_util_IFlxPooled
#include <flixel/util/IFlxPooled.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_260f396e6842cd39_13_new,"flixel.addons.transition.TransitionTiles","new",0xe99630b2,"flixel.addons.transition.TransitionTiles.new","flixel/addons/transition/TransitionTiles.hx",13,0x085b791f)
HX_LOCAL_STACK_FRAME(_hx_pos_260f396e6842cd39_90_destroy,"flixel.addons.transition.TransitionTiles","destroy",0x85541e4c,"flixel.addons.transition.TransitionTiles.destroy","flixel/addons/transition/TransitionTiles.hx",90,0x085b791f)
HX_LOCAL_STACK_FRAME(_hx_pos_260f396e6842cd39_103_start,"flixel.addons.transition.TransitionTiles","start",0x0ae40d34,"flixel.addons.transition.TransitionTiles.start","flixel/addons/transition/TransitionTiles.hx",103,0x085b791f)
HX_LOCAL_STACK_FRAME(_hx_pos_260f396e6842cd39_96_start,"flixel.addons.transition.TransitionTiles","start",0x0ae40d34,"flixel.addons.transition.TransitionTiles.start","flixel/addons/transition/TransitionTiles.hx",96,0x085b791f)
HX_LOCAL_STACK_FRAME(_hx_pos_260f396e6842cd39_114_setStatus,"flixel.addons.transition.TransitionTiles","setStatus",0x0acdc646,"flixel.addons.transition.TransitionTiles.setStatus","flixel/addons/transition/TransitionTiles.hx",114,0x085b791f)
HX_LOCAL_STACK_FRAME(_hx_pos_260f396e6842cd39_109_setStatus,"flixel.addons.transition.TransitionTiles","setStatus",0x0acdc646,"flixel.addons.transition.TransitionTiles.setStatus","flixel/addons/transition/TransitionTiles.hx",109,0x085b791f)
HX_LOCAL_STACK_FRAME(_hx_pos_260f396e6842cd39_120_update,"flixel.addons.transition.TransitionTiles","update",0xfdb2a4f7,"flixel.addons.transition.TransitionTiles.update","flixel/addons/transition/TransitionTiles.hx",120,0x085b791f)
namespace flixel{
namespace addons{
namespace transition{

void TransitionTiles_obj::__construct( ::flixel::addons::transition::TransitionData data){
            	HX_GC_STACKFRAME(&_hx_pos_260f396e6842cd39_13_new)
HXLINE(  16)		this->_isCenter = false;
HXLINE(  20)		super::__construct(data);
HXLINE(  22)		this->_grpSprites =  ::flixel::group::FlxTypedSpriteGroup_obj::__alloc( HX_CTX ,null(),null(),null());
HXLINE(  23)		Float delay = (int)0;
HXLINE(  25)		if (hx::IsNull( data->tileData )) {
HXLINE(  27)			data->tileData =  ::Dynamic(hx::Anon_obj::Create(3)
            				->setFixed(0,HX_("width",06,b6,62,ca),(int)32)
            				->setFixed(1,HX_("height",e7,07,4c,02),(int)32)
            				->setFixed(2,HX_("asset",f0,69,39,26),null()));
            		}
HXLINE(  30)		 ::flixel::math::FlxRect region = data->region;
HXLINE(  32)		int tilesX = ::Math_obj::ceil(((Float)region->width / (Float)( (int)(data->tileData->__Field(HX_("width",06,b6,62,ca),hx::paccDynamic)) )));
HXLINE(  33)		int tilesY = ::Math_obj::ceil(((Float)region->height / (Float)( (int)(data->tileData->__Field(HX_("height",e7,07,4c,02),hx::paccDynamic)) )));
HXLINE(  35)		int maxTiles;
HXDLIN(  35)		if ((tilesX > tilesY)) {
HXLINE(  35)			maxTiles = tilesX;
            		}
            		else {
HXLINE(  35)			maxTiles = tilesY;
            		}
HXLINE(  37)		Float dTime = ((Float)data->duration / (Float)maxTiles);
HXLINE(  39)		Float xDelay = (dTime * ::Math_obj::abs(data->direction->x));
HXLINE(  40)		Float yDelay = (dTime * ::Math_obj::abs(data->direction->y));
HXLINE(  42)		int addX = ( (int)(data->tileData->__Field(HX_("width",06,b6,62,ca),hx::paccDynamic)) );
HXLINE(  43)		int addY = ( (int)(data->tileData->__Field(HX_("height",e7,07,4c,02),hx::paccDynamic)) );
HXLINE(  45)		int tx = (int)0;
HXLINE(  46)		int ty = (int)0;
HXLINE(  48)		int startX = ::Std_obj::_hx_int(region->x);
HXLINE(  49)		int startY = ::Std_obj::_hx_int(region->y);
HXLINE(  51)		if ((data->direction->x < (int)0)) {
HXLINE(  53)			addX = (addX * (int)-1);
HXLINE(  54)			startX = (startX + ::Std_obj::_hx_int((region->width + addX)));
            		}
HXLINE(  56)		if ((data->direction->y < (int)0)) {
HXLINE(  58)			addY = (addY * (int)-1);
HXLINE(  59)			startY = (startY + ::Std_obj::_hx_int((region->height + addY)));
            		}
HXLINE(  62)		tx = startX;
HXLINE(  63)		ty = startY;
HXLINE(  64)		{
HXLINE(  64)			int _g1 = (int)0;
HXDLIN(  64)			int _g = tilesY;
HXDLIN(  64)			while((_g1 < _g)){
HXLINE(  64)				_g1 = (_g1 + (int)1);
HXDLIN(  64)				int iy = (_g1 - (int)1);
HXLINE(  66)				{
HXLINE(  66)					int _g3 = (int)0;
HXDLIN(  66)					int _g2 = tilesX;
HXDLIN(  66)					while((_g3 < _g2)){
HXLINE(  66)						_g3 = (_g3 + (int)1);
HXDLIN(  66)						int ix = (_g3 - (int)1);
HXLINE(  68)						int frameRate = (int)40;
HXLINE(  69)						if (hx::IsNotNull( data->tileData->__Field(HX_("frameRate",ad,11,25,39),hx::paccDynamic) )) {
HXLINE(  71)							frameRate = ( (int)(data->tileData->__Field(HX_("frameRate",ad,11,25,39),hx::paccDynamic)) );
            						}
HXLINE(  73)						 ::flixel::addons::transition::FlxTransitionSprite ts =  ::flixel::addons::transition::FlxTransitionSprite_obj::__alloc( HX_CTX ,tx,ty,delay, ::Dynamic(data->tileData->__Field(HX_("asset",f0,69,39,26),hx::paccDynamic)), ::Dynamic(data->tileData->__Field(HX_("width",06,b6,62,ca),hx::paccDynamic)), ::Dynamic(data->tileData->__Field(HX_("height",e7,07,4c,02),hx::paccDynamic)),frameRate);
HXLINE(  74)						ts->set_color(data->color);
HXLINE(  75)						ts->scrollFactor->set((int)0,(int)0);
HXLINE(  76)						this->_grpSprites->add(ts).StaticCast<  ::flixel::addons::transition::FlxTransitionSprite >();
HXLINE(  77)						tx = (tx + addX);
HXLINE(  78)						delay = (delay + xDelay);
            					}
            				}
HXLINE(  80)				ty = (ty + addY);
HXLINE(  81)				tx = startX;
HXLINE(  82)				delay = ((iy + (int)1) * yDelay);
            			}
            		}
HXLINE(  84)		this->add(this->_grpSprites);
HXLINE(  86)		bool _hx_tmp;
HXDLIN(  86)		if ((data->direction->x == (int)0)) {
HXLINE(  86)			_hx_tmp = (data->direction->y == (int)0);
            		}
            		else {
HXLINE(  86)			_hx_tmp = false;
            		}
HXDLIN(  86)		this->_isCenter = _hx_tmp;
            	}

Dynamic TransitionTiles_obj::__CreateEmpty() { return new TransitionTiles_obj; }

void *TransitionTiles_obj::_hx_vtable = 0;

Dynamic TransitionTiles_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< TransitionTiles_obj > _hx_result = new TransitionTiles_obj();
	_hx_result->__construct(inArgs[0]);
	return _hx_result;
}

bool TransitionTiles_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x282173df) {
		if (inClassId<=(int)0x25a685e0) {
			if (inClassId<=(int)0x0b6ffd77) {
				return inClassId==(int)0x00000001 || inClassId==(int)0x0b6ffd77;
			} else {
				return inClassId==(int)0x25a685e0;
			}
		} else {
			return inClassId==(int)0x282173df;
		}
	} else {
		if (inClassId<=(int)0x2b6335a4) {
			return inClassId==(int)0x29bc10ca || inClassId==(int)0x2b6335a4;
		} else {
			return inClassId==(int)0x2e105115;
		}
	}
}

void TransitionTiles_obj::destroy(){
            	HX_STACKFRAME(&_hx_pos_260f396e6842cd39_90_destroy)
HXLINE(  91)		this->super::destroy();
HXLINE(  92)		this->_grpSprites = null();
            	}


void TransitionTiles_obj::start(int NewStatus){
            		HX_BEGIN_LOCAL_FUNC_S1(hx::LocalFunc,_hx_Closure_0,int,NewStatus) HXARGC(1)
            		void _hx_run( ::flixel::addons::transition::FlxTransitionSprite t){
            			HX_STACKFRAME(&_hx_pos_260f396e6842cd39_103_start)
HXLINE( 103)			t->start(NewStatus);
            		}
            		HX_END_LOCAL_FUNC1((void))

            	HX_STACKFRAME(&_hx_pos_260f396e6842cd39_96_start)
HXLINE(  97)		this->super::start(NewStatus);
HXLINE(  99)		this->_grpSprites->group->forEach( ::Dynamic(new _hx_Closure_0(NewStatus)),false);
            	}


void TransitionTiles_obj::setStatus(int NewStatus){
            		HX_BEGIN_LOCAL_FUNC_S1(hx::LocalFunc,_hx_Closure_0,int,NewStatus) HXARGC(1)
            		void _hx_run( ::flixel::addons::transition::FlxTransitionSprite t){
            			HX_STACKFRAME(&_hx_pos_260f396e6842cd39_114_setStatus)
HXLINE( 114)			t->setStatus(NewStatus);
            		}
            		HX_END_LOCAL_FUNC1((void))

            	HX_STACKFRAME(&_hx_pos_260f396e6842cd39_109_setStatus)
HXLINE( 110)		this->super::setStatus(NewStatus);
HXLINE( 111)		this->_grpSprites->group->forEach( ::Dynamic(new _hx_Closure_0(NewStatus)),false);
            	}


void TransitionTiles_obj::update(Float elapsed){
            	HX_STACKFRAME(&_hx_pos_260f396e6842cd39_120_update)
HXLINE( 121)		this->super::update(elapsed);
HXLINE( 122)		if (this->_started) {
HXLINE( 124)			bool allDone = true;
HXLINE( 125)			{
HXLINE( 125)				int _g = (int)0;
HXDLIN( 125)				::Array< ::Dynamic> _g1 = this->_grpSprites->group->members;
HXDLIN( 125)				while((_g < _g1->length)){
HXLINE( 125)					 ::flixel::addons::transition::FlxTransitionSprite sprite = _g1->__get(_g).StaticCast<  ::flixel::addons::transition::FlxTransitionSprite >();
HXDLIN( 125)					_g = (_g + (int)1);
HXLINE( 127)					bool _hx_tmp;
HXDLIN( 127)					if ((sprite->status != (int)-1)) {
HXLINE( 127)						_hx_tmp = (sprite->status != this->_endStatus);
            					}
            					else {
HXLINE( 127)						_hx_tmp = false;
            					}
HXDLIN( 127)					if (_hx_tmp) {
HXLINE( 129)						allDone = false;
HXLINE( 130)						goto _hx_goto_8;
            					}
            				}
            				_hx_goto_8:;
            			}
HXLINE( 133)			if (allDone) {
HXLINE( 135)				this->_started = false;
HXLINE( 136)				this->delayThenFinish();
            			}
            		}
            	}



hx::ObjectPtr< TransitionTiles_obj > TransitionTiles_obj::__new( ::flixel::addons::transition::TransitionData data) {
	hx::ObjectPtr< TransitionTiles_obj > __this = new TransitionTiles_obj();
	__this->__construct(data);
	return __this;
}

hx::ObjectPtr< TransitionTiles_obj > TransitionTiles_obj::__alloc(hx::Ctx *_hx_ctx, ::flixel::addons::transition::TransitionData data) {
	TransitionTiles_obj *__this = (TransitionTiles_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(TransitionTiles_obj), true, "flixel.addons.transition.TransitionTiles"));
	*(void **)__this = TransitionTiles_obj::_hx_vtable;
	__this->__construct(data);
	return __this;
}

TransitionTiles_obj::TransitionTiles_obj()
{
}

void TransitionTiles_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(TransitionTiles);
	HX_MARK_MEMBER_NAME(_grpSprites,"_grpSprites");
	HX_MARK_MEMBER_NAME(_isCenter,"_isCenter");
	 ::flixel::addons::transition::TransitionEffect_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void TransitionTiles_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(_grpSprites,"_grpSprites");
	HX_VISIT_MEMBER_NAME(_isCenter,"_isCenter");
	 ::flixel::addons::transition::TransitionEffect_obj::__Visit(HX_VISIT_ARG);
}

hx::Val TransitionTiles_obj::__Field(const ::String &inName,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 5:
		if (HX_FIELD_EQ(inName,"start") ) { return hx::Val( start_dyn() ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"update") ) { return hx::Val( update_dyn() ); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"destroy") ) { return hx::Val( destroy_dyn() ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"_isCenter") ) { return hx::Val( _isCenter ); }
		if (HX_FIELD_EQ(inName,"setStatus") ) { return hx::Val( setStatus_dyn() ); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"_grpSprites") ) { return hx::Val( _grpSprites ); }
	}
	return super::__Field(inName,inCallProp);
}

hx::Val TransitionTiles_obj::__SetField(const ::String &inName,const hx::Val &inValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 9:
		if (HX_FIELD_EQ(inName,"_isCenter") ) { _isCenter=inValue.Cast< bool >(); return inValue; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"_grpSprites") ) { _grpSprites=inValue.Cast<  ::flixel::group::FlxTypedSpriteGroup >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void TransitionTiles_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_HCSTRING("_grpSprites","\x88","\x88","\xee","\x52"));
	outFields->push(HX_HCSTRING("_isCenter","\xbe","\xb8","\xda","\xa5"));
	super::__GetFields(outFields);
};

#if HXCPP_SCRIPTABLE
static hx::StorageInfo TransitionTiles_obj_sMemberStorageInfo[] = {
	{hx::fsObject /*::flixel::group::FlxTypedSpriteGroup*/ ,(int)offsetof(TransitionTiles_obj,_grpSprites),HX_HCSTRING("_grpSprites","\x88","\x88","\xee","\x52")},
	{hx::fsBool,(int)offsetof(TransitionTiles_obj,_isCenter),HX_HCSTRING("_isCenter","\xbe","\xb8","\xda","\xa5")},
	{ hx::fsUnknown, 0, null()}
};
static hx::StaticInfo *TransitionTiles_obj_sStaticStorageInfo = 0;
#endif

static ::String TransitionTiles_obj_sMemberFields[] = {
	HX_HCSTRING("_grpSprites","\x88","\x88","\xee","\x52"),
	HX_HCSTRING("_isCenter","\xbe","\xb8","\xda","\xa5"),
	HX_HCSTRING("destroy","\xfa","\x2c","\x86","\x24"),
	HX_HCSTRING("start","\x62","\x74","\x0b","\x84"),
	HX_HCSTRING("setStatus","\x74","\x5c","\xa3","\x65"),
	HX_HCSTRING("update","\x09","\x86","\x05","\x87"),
	::String(null()) };

static void TransitionTiles_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(TransitionTiles_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void TransitionTiles_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(TransitionTiles_obj::__mClass,"__mClass");
};

#endif

hx::Class TransitionTiles_obj::__mClass;

void TransitionTiles_obj::__register()
{
	hx::Object *dummy = new TransitionTiles_obj;
	TransitionTiles_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("flixel.addons.transition.TransitionTiles","\xc0","\xaf","\xe7","\x1e");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mMarkFunc = TransitionTiles_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = hx::Class_obj::dupFunctions(TransitionTiles_obj_sMemberFields);
	__mClass->mCanCast = hx::TCanCast< TransitionTiles_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = TransitionTiles_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = TransitionTiles_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = TransitionTiles_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace flixel
} // end namespace addons
} // end namespace transition
