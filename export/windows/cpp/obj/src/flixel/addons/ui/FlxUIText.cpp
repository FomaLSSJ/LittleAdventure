// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxG
#include <flixel/FlxG.h>
#endif
#ifndef INCLUDED_flixel_FlxObject
#include <flixel/FlxObject.h>
#endif
#ifndef INCLUDED_flixel_FlxSprite
#include <flixel/FlxSprite.h>
#endif
#ifndef INCLUDED_flixel_IFlxBasic
#include <flixel/IFlxBasic.h>
#endif
#ifndef INCLUDED_flixel_IFlxSprite
#include <flixel/IFlxSprite.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_FlxUIText
#include <flixel/addons/ui/FlxUIText.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IFlxUIWidget
#include <flixel/addons/ui/interfaces/IFlxUIWidget.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IHasParams
#include <flixel/addons/ui/interfaces/IHasParams.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IResizable
#include <flixel/addons/ui/interfaces/IResizable.h>
#endif
#ifndef INCLUDED_flixel_graphics_FlxGraphic
#include <flixel/graphics/FlxGraphic.h>
#endif
#ifndef INCLUDED_flixel_system_debug_log_LogStyle
#include <flixel/system/debug/log/LogStyle.h>
#endif
#ifndef INCLUDED_flixel_system_frontEnds_LogFrontEnd
#include <flixel/system/frontEnds/LogFrontEnd.h>
#endif
#ifndef INCLUDED_flixel_text_FlxText
#include <flixel/text/FlxText.h>
#endif
#ifndef INCLUDED_flixel_text_FlxTextBorderStyle
#include <flixel/text/FlxTextBorderStyle.h>
#endif
#ifndef INCLUDED_flixel_text__FlxText_FlxTextAlign_Impl_
#include <flixel/text/_FlxText/FlxTextAlign_Impl_.h>
#endif
#ifndef INCLUDED_flixel_util_IFlxDestroyable
#include <flixel/util/IFlxDestroyable.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_BitmapData
#include <openfl/_legacy/display/BitmapData.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_DisplayObject
#include <openfl/_legacy/display/DisplayObject.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_IBitmapDrawable
#include <openfl/_legacy/display/IBitmapDrawable.h>
#endif
#ifndef INCLUDED_openfl__legacy_display_InteractiveObject
#include <openfl/_legacy/display/InteractiveObject.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_EventDispatcher
#include <openfl/_legacy/events/EventDispatcher.h>
#endif
#ifndef INCLUDED_openfl__legacy_events_IEventDispatcher
#include <openfl/_legacy/events/IEventDispatcher.h>
#endif
#ifndef INCLUDED_openfl__legacy_text_TextField
#include <openfl/_legacy/text/TextField.h>
#endif
#ifndef INCLUDED_openfl__legacy_text_TextFormat
#include <openfl/_legacy/text/TextFormat.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_e806b787b3227c3b_15_new,"flixel.addons.ui.FlxUIText","new",0x88106994,"flixel.addons.ui.FlxUIText.new","flixel/addons/ui/FlxUIText.hx",15,0x557f53bd)
HX_LOCAL_STACK_FRAME(_hx_pos_e806b787b3227c3b_28_resize,"flixel.addons.ui.FlxUIText","resize",0x42437940,"flixel.addons.ui.FlxUIText.resize","flixel/addons/ui/FlxUIText.hx",28,0x557f53bd)
HX_LOCAL_STACK_FRAME(_hx_pos_e806b787b3227c3b_95_set_minimumHeight,"flixel.addons.ui.FlxUIText","set_minimumHeight",0xb1233fec,"flixel.addons.ui.FlxUIText.set_minimumHeight","flixel/addons/ui/FlxUIText.hx",95,0x557f53bd)
HX_LOCAL_STACK_FRAME(_hx_pos_e806b787b3227c3b_105_set_params,"flixel.addons.ui.FlxUIText","set_params",0xcdb7becf,"flixel.addons.ui.FlxUIText.set_params","flixel/addons/ui/FlxUIText.hx",105,0x557f53bd)
HX_LOCAL_STACK_FRAME(_hx_pos_e806b787b3227c3b_111_clone,"flixel.addons.ui.FlxUIText","clone",0xab5f6191,"flixel.addons.ui.FlxUIText.clone","flixel/addons/ui/FlxUIText.hx",111,0x557f53bd)
namespace flixel{
namespace addons{
namespace ui{

void FlxUIText_obj::__construct(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,hx::Null< Float >  __o_FieldWidth,::String Text,hx::Null< int >  __o_Size,hx::Null< bool >  __o_EmbeddedFont){
Float X = __o_X.Default(0);
Float Y = __o_Y.Default(0);
Float FieldWidth = __o_FieldWidth.Default(0);
int Size = __o_Size.Default(8);
bool EmbeddedFont = __o_EmbeddedFont.Default(true);
            	HX_STACKFRAME(&_hx_pos_e806b787b3227c3b_15_new)
HXLINE(  20)		this->minimumHeight = ((Float)1);
HXLINE(  17)		this->broadcastToFlxUI = true;
HXLINE(  24)		super::__construct(X,Y,FieldWidth,Text,Size,EmbeddedFont);
            	}

Dynamic FlxUIText_obj::__CreateEmpty() { return new FlxUIText_obj; }

void *FlxUIText_obj::_hx_vtable = 0;

Dynamic FlxUIText_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< FlxUIText_obj > _hx_result = new FlxUIText_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3],inArgs[4],inArgs[5]);
	return _hx_result;
}

bool FlxUIText_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x25a685e0) {
		if (inClassId<=(int)0x125b9470) {
			if (inClassId<=(int)0x0b6ffd77) {
				return inClassId==(int)0x00000001 || inClassId==(int)0x0b6ffd77;
			} else {
				return inClassId==(int)0x125b9470;
			}
		} else {
			return inClassId==(int)0x25a685e0;
		}
	} else {
		return inClassId==(int)0x2e105115 || inClassId==(int)0x4d1b55ae;
	}
}

static ::flixel::IFlxSprite_obj _hx_flixel_addons_ui_FlxUIText__hx_flixel_IFlxSprite= {
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_active,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_visible,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_alive,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_exists,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::draw,
	( void (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::update,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::destroy,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::kill,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::revive,
	( ::String (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::toString,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_x,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_y,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_alpha,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_angle,
	( int (hx::Object::*)(int))&::flixel::addons::ui::FlxUIText_obj::set_facing,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_moves,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_immovable,
	( void (hx::Object::*)(Float,Float))&::flixel::addons::ui::FlxUIText_obj::reset,
	( void (hx::Object::*)(hx::Null< Float > ,hx::Null< Float > ))&::flixel::addons::ui::FlxUIText_obj::setPosition,
};

static ::flixel::IFlxBasic_obj _hx_flixel_addons_ui_FlxUIText__hx_flixel_IFlxBasic= {
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_active,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_visible,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_alive,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_exists,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::draw,
	( void (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::update,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::destroy,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::kill,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::revive,
	( ::String (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::toString,
};

static ::flixel::addons::ui::interfaces::IFlxUIWidget_obj _hx_flixel_addons_ui_FlxUIText__hx_flixel_addons_ui_interfaces_IFlxUIWidget= {
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_active,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_visible,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_alive,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_exists,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::draw,
	( void (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::update,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::destroy,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::kill,
	( void (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::revive,
	( ::String (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::toString,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_x,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_y,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_alpha,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_angle,
	( int (hx::Object::*)(int))&::flixel::addons::ui::FlxUIText_obj::set_facing,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_moves,
	( bool (hx::Object::*)(bool))&::flixel::addons::ui::FlxUIText_obj::set_immovable,
	( void (hx::Object::*)(Float,Float))&::flixel::addons::ui::FlxUIText_obj::reset,
	( void (hx::Object::*)(hx::Null< Float > ,hx::Null< Float > ))&::flixel::addons::ui::FlxUIText_obj::setPosition,
	( Float (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::get_width,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_width,
	( Float (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::get_height,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_height,
};

static ::flixel::addons::ui::interfaces::IHasParams_obj _hx_flixel_addons_ui_FlxUIText__hx_flixel_addons_ui_interfaces_IHasParams= {
	( ::cpp::VirtualArray (hx::Object::*)(::cpp::VirtualArray))&::flixel::addons::ui::FlxUIText_obj::set_params,
};

static ::flixel::addons::ui::interfaces::IResizable_obj _hx_flixel_addons_ui_FlxUIText__hx_flixel_addons_ui_interfaces_IResizable= {
	( Float (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::get_width,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_width,
	( Float (hx::Object::*)())&::flixel::addons::ui::FlxUIText_obj::get_height,
	( Float (hx::Object::*)(Float))&::flixel::addons::ui::FlxUIText_obj::set_height,
	( void (hx::Object::*)(Float,Float))&::flixel::addons::ui::FlxUIText_obj::resize,
};

void *FlxUIText_obj::_hx_getInterface(int inHash) {
	switch(inHash) {
		case (int)0x897c83aa: return &_hx_flixel_addons_ui_FlxUIText__hx_flixel_IFlxSprite;
		case (int)0x284cfea9: return &_hx_flixel_addons_ui_FlxUIText__hx_flixel_IFlxBasic;
		case (int)0x998525de: return &_hx_flixel_addons_ui_FlxUIText__hx_flixel_addons_ui_interfaces_IFlxUIWidget;
		case (int)0x9e5db374: return &_hx_flixel_addons_ui_FlxUIText__hx_flixel_addons_ui_interfaces_IHasParams;
		case (int)0x194a3c9f: return &_hx_flixel_addons_ui_FlxUIText__hx_flixel_addons_ui_interfaces_IResizable;
	}
	return super::_hx_getInterface(inHash);
}

void FlxUIText_obj::resize(Float w,Float h){
            	HX_STACKFRAME(&_hx_pos_e806b787b3227c3b_28_resize)
HXLINE(  29)		int sign = (int)1;
HXLINE(  31)		if ((h < this->minimumHeight)) {
HXLINE(  33)			h = this->minimumHeight;
            		}
HXLINE(  36)		if ((h < this->get_height())) {
HXLINE(  36)			sign = (int)-1;
            		}
HXLINE(  38)		this->set_width(w);
HXLINE(  39)		this->set_height(h);
HXLINE(  41)		 ::openfl::_legacy::text::TextField _hx_tmp = this->textField;
HXDLIN(  41)		_hx_tmp->set_width(this->get_width());
HXLINE(  43)		int old_size = ::Std_obj::_hx_int(this->_defaultFormat->size);
HXLINE(  44)		Float diff = this->get_height();
HXDLIN(  44)		Float diff1 = (diff - this->graphic->bitmap->get_height());
HXLINE(  52)		int failsafe = (int)0;
HXLINE(  54)		int numLines = this->textField->get_numLines();
HXLINE(  56)		while(true){
HXLINE(  56)			bool _hx_tmp1;
HXDLIN(  56)			if (((diff1 * sign) > (int)0)) {
HXLINE(  56)				_hx_tmp1 = (failsafe < (int)999);
            			}
            			else {
HXLINE(  56)				_hx_tmp1 = false;
            			}
HXDLIN(  56)			if (!(_hx_tmp1)) {
HXLINE(  56)				goto _hx_goto_1;
            			}
HXLINE(  58)			failsafe = (failsafe + (int)1);
HXLINE(  59)			{
HXLINE(  59)				 ::flixel::addons::ui::FlxUIText _g = hx::ObjectPtr<OBJ_>(this);
HXDLIN(  59)				_g->set_size((::Std_obj::_hx_int(_g->_defaultFormat->size) + sign));
            			}
HXLINE(  60)			bool _hx_tmp2;
HXDLIN(  60)			if ((sign > (int)0)) {
HXLINE(  60)				_hx_tmp2 = (this->textField->get_numLines() > numLines);
            			}
            			else {
HXLINE(  60)				_hx_tmp2 = false;
            			}
HXDLIN(  60)			if (_hx_tmp2) {
HXLINE(  62)				{
HXLINE(  62)					 ::flixel::addons::ui::FlxUIText _g1 = hx::ObjectPtr<OBJ_>(this);
HXDLIN(  62)					_g1->set_size((::Std_obj::_hx_int(_g1->_defaultFormat->size) - sign));
            				}
HXLINE(  63)				goto _hx_goto_1;
            			}
HXLINE(  65)			this->_regen = true;
HXLINE(  66)			this->calcFrame(true);
HXLINE(  71)			diff1 = (h - this->graphic->bitmap->get_height());
HXLINE(  74)			diff1 = (h - this->graphic->bitmap->get_height());
            		}
            		_hx_goto_1:;
HXLINE(  81)		if ((failsafe >= (int)999)) {
HXLINE(  83)			::flixel::FlxG_obj::log->advanced(((HX_("Loop failsafe tripped while resizing FlxUIText to height(",fa,63,b3,d6) + h) + HX_(")",29,00,00,00)),::flixel::_hx_system::debug::log::LogStyle_obj::WARNING,true);
HXLINE(  84)			this->set_size(old_size);
            		}
HXLINE(  87)		this->set_width(w);
HXLINE(  88)		this->set_height(h);
HXLINE(  90)		this->_regen = true;
HXLINE(  91)		this->calcFrame(true);
            	}


HX_DEFINE_DYNAMIC_FUNC2(FlxUIText_obj,resize,(void))

Float FlxUIText_obj::set_minimumHeight(Float H){
            	HX_STACKFRAME(&_hx_pos_e806b787b3227c3b_95_set_minimumHeight)
HXLINE(  96)		if ((H < (int)1)) {
HXLINE(  98)			H = (int)1;
            		}
HXLINE( 100)		this->minimumHeight = H;
HXLINE( 101)		return this->minimumHeight;
            	}


HX_DEFINE_DYNAMIC_FUNC1(FlxUIText_obj,set_minimumHeight,return )

::cpp::VirtualArray FlxUIText_obj::set_params(::cpp::VirtualArray p){
            	HX_STACKFRAME(&_hx_pos_e806b787b3227c3b_105_set_params)
HXLINE( 106)		this->params = p;
HXLINE( 107)		return this->params;
            	}


HX_DEFINE_DYNAMIC_FUNC1(FlxUIText_obj,set_params,return )

 ::flixel::FlxSprite FlxUIText_obj::clone(){
            	HX_GC_STACKFRAME(&_hx_pos_e806b787b3227c3b_111_clone)
HXLINE( 112)		 ::flixel::addons::ui::FlxUIText newText =  ::flixel::addons::ui::FlxUIText_obj::__alloc( HX_CTX ,null(),null(),null(),null(),null(),null());
HXLINE( 113)		newText->set_width(this->get_width());
HXLINE( 114)		newText->set_height(this->get_height());
HXLINE( 116)		::String theFont = this->_font;
HXLINE( 120)		int _hx_tmp = ::Std_obj::_hx_int(this->_defaultFormat->size);
HXDLIN( 120)		newText->setFormat(theFont,_hx_tmp,this->color,null(),null(),null(),null());
HXLINE( 123)		bool _hx_tmp1;
HXDLIN( 123)		if (hx::IsNotNull( this->_defaultFormat )) {
HXLINE( 123)			_hx_tmp1 = hx::IsNotNull( this->_defaultFormat->align );
            		}
            		else {
HXLINE( 123)			_hx_tmp1 = false;
            		}
HXDLIN( 123)		if (_hx_tmp1) {
HXLINE( 125)			newText->set_alignment(::flixel::text::_FlxText::FlxTextAlign_Impl__obj::fromOpenFL(this->_defaultFormat->align));
            		}
HXLINE( 127)		{
HXLINE( 127)			int Color = this->borderColor;
HXDLIN( 127)			Float Size = this->borderSize;
HXDLIN( 127)			Float Quality = this->borderQuality;
HXDLIN( 127)			newText->set_borderStyle(this->borderStyle);
HXDLIN( 127)			newText->set_borderColor(Color);
HXDLIN( 127)			newText->set_borderSize(Size);
HXDLIN( 127)			newText->set_borderQuality(Quality);
            		}
HXLINE( 128)		newText->set_text(this->text);
HXLINE( 129)		return newText;
            	}



hx::ObjectPtr< FlxUIText_obj > FlxUIText_obj::__new(hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,hx::Null< Float >  __o_FieldWidth,::String Text,hx::Null< int >  __o_Size,hx::Null< bool >  __o_EmbeddedFont) {
	hx::ObjectPtr< FlxUIText_obj > __this = new FlxUIText_obj();
	__this->__construct(__o_X,__o_Y,__o_FieldWidth,Text,__o_Size,__o_EmbeddedFont);
	return __this;
}

hx::ObjectPtr< FlxUIText_obj > FlxUIText_obj::__alloc(hx::Ctx *_hx_ctx,hx::Null< Float >  __o_X,hx::Null< Float >  __o_Y,hx::Null< Float >  __o_FieldWidth,::String Text,hx::Null< int >  __o_Size,hx::Null< bool >  __o_EmbeddedFont) {
	FlxUIText_obj *__this = (FlxUIText_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(FlxUIText_obj), true, "flixel.addons.ui.FlxUIText"));
	*(void **)__this = FlxUIText_obj::_hx_vtable;
	__this->__construct(__o_X,__o_Y,__o_FieldWidth,Text,__o_Size,__o_EmbeddedFont);
	return __this;
}

FlxUIText_obj::FlxUIText_obj()
{
}

void FlxUIText_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(FlxUIText);
	HX_MARK_MEMBER_NAME(broadcastToFlxUI,"broadcastToFlxUI");
	HX_MARK_MEMBER_NAME(name,"name");
	HX_MARK_MEMBER_NAME(params,"params");
	HX_MARK_MEMBER_NAME(minimumHeight,"minimumHeight");
	 ::flixel::text::FlxText_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void FlxUIText_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(broadcastToFlxUI,"broadcastToFlxUI");
	HX_VISIT_MEMBER_NAME(name,"name");
	HX_VISIT_MEMBER_NAME(params,"params");
	HX_VISIT_MEMBER_NAME(minimumHeight,"minimumHeight");
	 ::flixel::text::FlxText_obj::__Visit(HX_VISIT_ARG);
}

hx::Val FlxUIText_obj::__Field(const ::String &inName,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"name") ) { return hx::Val( name ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"clone") ) { return hx::Val( clone_dyn() ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"params") ) { return hx::Val( params ); }
		if (HX_FIELD_EQ(inName,"resize") ) { return hx::Val( resize_dyn() ); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"set_params") ) { return hx::Val( set_params_dyn() ); }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"minimumHeight") ) { return hx::Val( minimumHeight ); }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"broadcastToFlxUI") ) { return hx::Val( broadcastToFlxUI ); }
		break;
	case 17:
		if (HX_FIELD_EQ(inName,"set_minimumHeight") ) { return hx::Val( set_minimumHeight_dyn() ); }
	}
	return super::__Field(inName,inCallProp);
}

hx::Val FlxUIText_obj::__SetField(const ::String &inName,const hx::Val &inValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"name") ) { name=inValue.Cast< ::String >(); return inValue; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"params") ) { if (inCallProp == hx::paccAlways) return hx::Val( set_params(inValue.Cast< ::cpp::VirtualArray >()) );params=inValue.Cast< ::cpp::VirtualArray >(); return inValue; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"minimumHeight") ) { if (inCallProp == hx::paccAlways) return hx::Val( set_minimumHeight(inValue.Cast< Float >()) );minimumHeight=inValue.Cast< Float >(); return inValue; }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"broadcastToFlxUI") ) { broadcastToFlxUI=inValue.Cast< bool >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void FlxUIText_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_HCSTRING("broadcastToFlxUI","\xca","\x32","\x56","\x1a"));
	outFields->push(HX_HCSTRING("name","\x4b","\x72","\xff","\x48"));
	outFields->push(HX_HCSTRING("params","\x46","\xfb","\x7a","\xed"));
	outFields->push(HX_HCSTRING("minimumHeight","\x55","\x90","\xf2","\xc8"));
	super::__GetFields(outFields);
};

#if HXCPP_SCRIPTABLE
static hx::StorageInfo FlxUIText_obj_sMemberStorageInfo[] = {
	{hx::fsBool,(int)offsetof(FlxUIText_obj,broadcastToFlxUI),HX_HCSTRING("broadcastToFlxUI","\xca","\x32","\x56","\x1a")},
	{hx::fsString,(int)offsetof(FlxUIText_obj,name),HX_HCSTRING("name","\x4b","\x72","\xff","\x48")},
	{hx::fsObject /*cpp::ArrayBase*/ ,(int)offsetof(FlxUIText_obj,params),HX_HCSTRING("params","\x46","\xfb","\x7a","\xed")},
	{hx::fsFloat,(int)offsetof(FlxUIText_obj,minimumHeight),HX_HCSTRING("minimumHeight","\x55","\x90","\xf2","\xc8")},
	{ hx::fsUnknown, 0, null()}
};
static hx::StaticInfo *FlxUIText_obj_sStaticStorageInfo = 0;
#endif

static ::String FlxUIText_obj_sMemberFields[] = {
	HX_HCSTRING("broadcastToFlxUI","\xca","\x32","\x56","\x1a"),
	HX_HCSTRING("name","\x4b","\x72","\xff","\x48"),
	HX_HCSTRING("params","\x46","\xfb","\x7a","\xed"),
	HX_HCSTRING("minimumHeight","\x55","\x90","\xf2","\xc8"),
	HX_HCSTRING("resize","\xf4","\x59","\x7b","\x08"),
	HX_HCSTRING("set_minimumHeight","\xb8","\x73","\xd0","\xf2"),
	HX_HCSTRING("set_params","\x83","\x09","\x80","\xe1"),
	HX_HCSTRING("clone","\x5d","\x13","\x63","\x48"),
	::String(null()) };

static void FlxUIText_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(FlxUIText_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void FlxUIText_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(FlxUIText_obj::__mClass,"__mClass");
};

#endif

hx::Class FlxUIText_obj::__mClass;

void FlxUIText_obj::__register()
{
	hx::Object *dummy = new FlxUIText_obj;
	FlxUIText_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("flixel.addons.ui.FlxUIText","\xa2","\x4f","\x17","\xa3");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mMarkFunc = FlxUIText_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = hx::Class_obj::dupFunctions(FlxUIText_obj_sMemberFields);
	__mClass->mCanCast = hx::TCanCast< FlxUIText_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = FlxUIText_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = FlxUIText_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = FlxUIText_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace flixel
} // end namespace addons
} // end namespace ui
