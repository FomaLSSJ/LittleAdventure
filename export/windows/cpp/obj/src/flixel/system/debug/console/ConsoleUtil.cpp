// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_Reflect
#include <Reflect.h>
#endif
#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_StringTools
#include <StringTools.h>
#endif
#ifndef INCLUDED_Type
#include <Type.h>
#endif
#ifndef INCLUDED_flixel_FlxG
#include <flixel/FlxG.h>
#endif
#ifndef INCLUDED_flixel_system_debug_console_ConsoleUtil
#include <flixel/system/debug/console/ConsoleUtil.h>
#endif
#ifndef INCLUDED_flixel_system_debug_console__ConsoleUtil_Interp
#include <flixel/system/debug/console/_ConsoleUtil/Interp.h>
#endif
#ifndef INCLUDED_flixel_system_debug_log_LogStyle
#include <flixel/system/debug/log/LogStyle.h>
#endif
#ifndef INCLUDED_flixel_system_frontEnds_LogFrontEnd
#include <flixel/system/frontEnds/LogFrontEnd.h>
#endif
#ifndef INCLUDED_flixel_util_FlxStringUtil
#include <flixel/util/FlxStringUtil.h>
#endif
#ifndef INCLUDED_haxe_IMap
#include <haxe/IMap.h>
#endif
#ifndef INCLUDED_haxe_ds_StringMap
#include <haxe/ds/StringMap.h>
#endif
#ifndef INCLUDED_hscript_Expr
#include <hscript/Expr.h>
#endif
#ifndef INCLUDED_hscript_Interp
#include <hscript/Interp.h>
#endif
#ifndef INCLUDED_hscript_Parser
#include <hscript/Parser.h>
#endif

HX_LOCAL_STACK_FRAME(_hx_pos_a994ee380c23f681_33_init,"flixel.system.debug.console.ConsoleUtil","init",0x40765844,"flixel.system.debug.console.ConsoleUtil.init","flixel/system/debug/console/ConsoleUtil.hx",33,0x2e8bcde6)
HX_LOCAL_STACK_FRAME(_hx_pos_a994ee380c23f681_48_parseCommand,"flixel.system.debug.console.ConsoleUtil","parseCommand",0xbaf1368c,"flixel.system.debug.console.ConsoleUtil.parseCommand","flixel/system/debug/console/ConsoleUtil.hx",48,0x2e8bcde6)
HX_LOCAL_STACK_FRAME(_hx_pos_a994ee380c23f681_62_runCommand,"flixel.system.debug.console.ConsoleUtil","runCommand",0x85b4fd74,"flixel.system.debug.console.ConsoleUtil.runCommand","flixel/system/debug/console/ConsoleUtil.hx",62,0x2e8bcde6)
HX_LOCAL_STACK_FRAME(_hx_pos_a994ee380c23f681_72_runExpr,"flixel.system.debug.console.ConsoleUtil","runExpr",0x4a0f2d6c,"flixel.system.debug.console.ConsoleUtil.runExpr","flixel/system/debug/console/ConsoleUtil.hx",72,0x2e8bcde6)
HX_LOCAL_STACK_FRAME(_hx_pos_a994ee380c23f681_83_registerObject,"flixel.system.debug.console.ConsoleUtil","registerObject",0x0d502bb6,"flixel.system.debug.console.ConsoleUtil.registerObject","flixel/system/debug/console/ConsoleUtil.hx",83,0x2e8bcde6)
HX_LOCAL_STACK_FRAME(_hx_pos_a994ee380c23f681_95_registerFunction,"flixel.system.debug.console.ConsoleUtil","registerFunction",0xb3a1c3cf,"flixel.system.debug.console.ConsoleUtil.registerFunction","flixel/system/debug/console/ConsoleUtil.hx",95,0x2e8bcde6)
HX_LOCAL_STACK_FRAME(_hx_pos_a994ee380c23f681_101_getFields,"flixel.system.debug.console.ConsoleUtil","getFields",0x604f9dfb,"flixel.system.debug.console.ConsoleUtil.getFields","flixel/system/debug/console/ConsoleUtil.hx",101,0x2e8bcde6)
HX_LOCAL_STACK_FRAME(_hx_pos_a994ee380c23f681_131_sortFields,"flixel.system.debug.console.ConsoleUtil","sortFields",0x773f00ab,"flixel.system.debug.console.ConsoleUtil.sortFields","flixel/system/debug/console/ConsoleUtil.hx",131,0x2e8bcde6)
HX_LOCAL_STACK_FRAME(_hx_pos_a994ee380c23f681_127_sortFields,"flixel.system.debug.console.ConsoleUtil","sortFields",0x773f00ab,"flixel.system.debug.console.ConsoleUtil.sortFields","flixel/system/debug/console/ConsoleUtil.hx",127,0x2e8bcde6)
HX_LOCAL_STACK_FRAME(_hx_pos_a994ee380c23f681_153_log,"flixel.system.debug.console.ConsoleUtil","log",0x2bebd9d0,"flixel.system.debug.console.ConsoleUtil.log","flixel/system/debug/console/ConsoleUtil.hx",153,0x2e8bcde6)
namespace flixel{
namespace _hx_system{
namespace debug{
namespace console{

void ConsoleUtil_obj::__construct() { }

Dynamic ConsoleUtil_obj::__CreateEmpty() { return new ConsoleUtil_obj; }

void *ConsoleUtil_obj::_hx_vtable = 0;

Dynamic ConsoleUtil_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< ConsoleUtil_obj > _hx_result = new ConsoleUtil_obj();
	_hx_result->__construct();
	return _hx_result;
}

bool ConsoleUtil_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x6408060a;
}

 ::hscript::Parser ConsoleUtil_obj::parser;

 ::flixel::_hx_system::debug::console::_ConsoleUtil::Interp ConsoleUtil_obj::interp;

void ConsoleUtil_obj::init(){
            	HX_GC_STACKFRAME(&_hx_pos_a994ee380c23f681_33_init)
HXLINE(  34)		::flixel::_hx_system::debug::console::ConsoleUtil_obj::parser =  ::hscript::Parser_obj::__alloc( HX_CTX );
HXLINE(  35)		::flixel::_hx_system::debug::console::ConsoleUtil_obj::parser->allowJSON = true;
HXLINE(  36)		::flixel::_hx_system::debug::console::ConsoleUtil_obj::parser->allowTypes = true;
HXLINE(  38)		::flixel::_hx_system::debug::console::ConsoleUtil_obj::interp =  ::flixel::_hx_system::debug::console::_ConsoleUtil::Interp_obj::__alloc( HX_CTX );
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC0(ConsoleUtil_obj,init,(void))

 ::hscript::Expr ConsoleUtil_obj::parseCommand(::String Input){
            	HX_STACKFRAME(&_hx_pos_a994ee380c23f681_48_parseCommand)
HXLINE(  49)		if (::StringTools_obj::endsWith(Input,HX_(";",3b,00,00,00))) {
HXLINE(  50)			Input = Input.substr((int)0,(int)-1);
            		}
HXLINE(  51)		return ::flixel::_hx_system::debug::console::ConsoleUtil_obj::parser->parseString(Input,null());
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(ConsoleUtil_obj,parseCommand,return )

 ::Dynamic ConsoleUtil_obj::runCommand(::String Input){
            	HX_STACKFRAME(&_hx_pos_a994ee380c23f681_62_runCommand)
HXDLIN(  62)		 ::flixel::_hx_system::debug::console::_ConsoleUtil::Interp _hx_tmp = ::flixel::_hx_system::debug::console::ConsoleUtil_obj::interp;
HXDLIN(  62)		return _hx_tmp->expr(::flixel::_hx_system::debug::console::ConsoleUtil_obj::parseCommand(Input));
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(ConsoleUtil_obj,runCommand,return )

 ::Dynamic ConsoleUtil_obj::runExpr( ::hscript::Expr expr){
            	HX_STACKFRAME(&_hx_pos_a994ee380c23f681_72_runExpr)
HXDLIN(  72)		return ::flixel::_hx_system::debug::console::ConsoleUtil_obj::interp->expr(expr);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(ConsoleUtil_obj,runExpr,return )

void ConsoleUtil_obj::registerObject(::String ObjectAlias, ::Dynamic AnyObject){
            	HX_STACKFRAME(&_hx_pos_a994ee380c23f681_83_registerObject)
HXDLIN(  83)		bool _hx_tmp;
HXDLIN(  83)		if (hx::IsNotNull( AnyObject )) {
HXDLIN(  83)			_hx_tmp = ::Reflect_obj::isObject(AnyObject);
            		}
            		else {
HXDLIN(  83)			_hx_tmp = true;
            		}
HXDLIN(  83)		if (_hx_tmp) {
HXLINE(  84)			::flixel::_hx_system::debug::console::ConsoleUtil_obj::interp->variables->set(ObjectAlias,AnyObject);
            		}
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(ConsoleUtil_obj,registerObject,(void))

void ConsoleUtil_obj::registerFunction(::String FunctionAlias, ::Dynamic Function){
            	HX_STACKFRAME(&_hx_pos_a994ee380c23f681_95_registerFunction)
HXDLIN(  95)		if (::Reflect_obj::isFunction(Function)) {
HXLINE(  96)			::flixel::_hx_system::debug::console::ConsoleUtil_obj::interp->variables->set(FunctionAlias,Function);
            		}
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(ConsoleUtil_obj,registerFunction,(void))

::Array< ::String > ConsoleUtil_obj::getFields( ::Dynamic Object){
            	HX_STACKFRAME(&_hx_pos_a994ee380c23f681_101_getFields)
HXLINE( 102)		::Array< ::String > fields = ::Array_obj< ::String >::__new(0);
HXLINE( 103)		if (::Std_obj::is(Object,hx::ClassOf< ::hx::Class >())) {
HXLINE( 104)			fields = ::Type_obj::getClassFields(Object);
            		}
            		else {
HXLINE( 105)			if (::Reflect_obj::isObject(Object)) {
HXLINE( 106)				fields = ::Type_obj::getInstanceFields(::Type_obj::getClass(Object));
            			}
            		}
HXLINE( 108)		::Array< ::String > filteredFields = ::Array_obj< ::String >::__new(0);
HXLINE( 109)		{
HXLINE( 109)			int _g = (int)0;
HXDLIN( 109)			while((_g < fields->length)){
HXLINE( 109)				::String field = fields->__get(_g);
HXDLIN( 109)				_g = (_g + (int)1);
HXLINE( 112)				bool _hx_tmp;
HXDLIN( 112)				if (!(::StringTools_obj::startsWith(field,HX_("get_",09,03,62,44)))) {
HXLINE( 112)					_hx_tmp = ::StringTools_obj::startsWith(field,HX_("set_",7d,92,50,4c));
            				}
            				else {
HXLINE( 112)					_hx_tmp = true;
            				}
HXDLIN( 112)				if (_hx_tmp) {
HXLINE( 114)					::String name = field.substr((int)4,null());
HXLINE( 116)					bool _hx_tmp1;
HXDLIN( 116)					if ((fields->indexOf(name,null()) == (int)-1)) {
HXLINE( 116)						_hx_tmp1 = (filteredFields->indexOf(name,null()) == (int)-1);
            					}
            					else {
HXLINE( 116)						_hx_tmp1 = false;
            					}
HXDLIN( 116)					if (_hx_tmp1) {
HXLINE( 117)						filteredFields->push(name);
            					}
            				}
            				else {
HXLINE( 120)					filteredFields->push(field);
            				}
            			}
            		}
HXLINE( 123)		return ::flixel::_hx_system::debug::console::ConsoleUtil_obj::sortFields(filteredFields);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(ConsoleUtil_obj,getFields,return )

::Array< ::String > ConsoleUtil_obj::sortFields(::Array< ::String > fields){
            		HX_BEGIN_LOCAL_FUNC_S1(hx::LocalFunc,_hx_Closure_0,::Array< ::String >,underscoreList) HXARGC(1)
            		bool _hx_run(::String field){
            			HX_STACKFRAME(&_hx_pos_a994ee380c23f681_131_sortFields)
HXLINE( 132)			if (::StringTools_obj::startsWith(field,HX_("_",5f,00,00,00))) {
HXLINE( 134)				underscoreList->push(field);
HXLINE( 135)				return false;
            			}
HXLINE( 137)			return true;
            		}
            		HX_END_LOCAL_FUNC1(return)

            	HX_STACKFRAME(&_hx_pos_a994ee380c23f681_127_sortFields)
HXLINE( 128)		::Array< ::String > underscoreList = ::Array_obj< ::String >::__new(0);
HXLINE( 130)		fields = fields->filter( ::Dynamic(new _hx_Closure_0(underscoreList)));
HXLINE( 140)		::flixel::util::FlxStringUtil_obj::sortAlphabetically(fields);
HXLINE( 141)		::flixel::util::FlxStringUtil_obj::sortAlphabetically(underscoreList);
HXLINE( 143)		return fields->concat(underscoreList);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(ConsoleUtil_obj,sortFields,return )

void ConsoleUtil_obj::log( ::Dynamic Text){
            	HX_STACKFRAME(&_hx_pos_a994ee380c23f681_153_log)
HXDLIN( 153)		::flixel::FlxG_obj::log->advanced(::cpp::VirtualArray_obj::__new(1)->init(0,Text),::flixel::_hx_system::debug::log::LogStyle_obj::CONSOLE,null());
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(ConsoleUtil_obj,log,(void))


ConsoleUtil_obj::ConsoleUtil_obj()
{
}

bool ConsoleUtil_obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 3:
		if (HX_FIELD_EQ(inName,"log") ) { outValue = log_dyn(); return true; }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"init") ) { outValue = init_dyn(); return true; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"parser") ) { outValue = ( parser ); return true; }
		if (HX_FIELD_EQ(inName,"interp") ) { outValue = ( interp ); return true; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"runExpr") ) { outValue = runExpr_dyn(); return true; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"getFields") ) { outValue = getFields_dyn(); return true; }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"runCommand") ) { outValue = runCommand_dyn(); return true; }
		if (HX_FIELD_EQ(inName,"sortFields") ) { outValue = sortFields_dyn(); return true; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"parseCommand") ) { outValue = parseCommand_dyn(); return true; }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"registerObject") ) { outValue = registerObject_dyn(); return true; }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"registerFunction") ) { outValue = registerFunction_dyn(); return true; }
	}
	return false;
}

bool ConsoleUtil_obj::__SetStatic(const ::String &inName,Dynamic &ioValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 6:
		if (HX_FIELD_EQ(inName,"parser") ) { parser=ioValue.Cast<  ::hscript::Parser >(); return true; }
		if (HX_FIELD_EQ(inName,"interp") ) { interp=ioValue.Cast<  ::flixel::_hx_system::debug::console::_ConsoleUtil::Interp >(); return true; }
	}
	return false;
}

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *ConsoleUtil_obj_sMemberStorageInfo = 0;
static hx::StaticInfo ConsoleUtil_obj_sStaticStorageInfo[] = {
	{hx::fsObject /*::hscript::Parser*/ ,(void *) &ConsoleUtil_obj::parser,HX_HCSTRING("parser","\xdf","\x9c","\x88","\xed")},
	{hx::fsObject /*::flixel::_hx_system::debug::console::_ConsoleUtil::Interp*/ ,(void *) &ConsoleUtil_obj::interp,HX_HCSTRING("interp","\xd4","\x79","\x86","\x9e")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static void ConsoleUtil_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(ConsoleUtil_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(ConsoleUtil_obj::parser,"parser");
	HX_MARK_MEMBER_NAME(ConsoleUtil_obj::interp,"interp");
};

#ifdef HXCPP_VISIT_ALLOCS
static void ConsoleUtil_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(ConsoleUtil_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(ConsoleUtil_obj::parser,"parser");
	HX_VISIT_MEMBER_NAME(ConsoleUtil_obj::interp,"interp");
};

#endif

hx::Class ConsoleUtil_obj::__mClass;

static ::String ConsoleUtil_obj_sStaticFields[] = {
	HX_HCSTRING("parser","\xdf","\x9c","\x88","\xed"),
	HX_HCSTRING("interp","\xd4","\x79","\x86","\x9e"),
	HX_HCSTRING("init","\x10","\x3b","\xbb","\x45"),
	HX_HCSTRING("parseCommand","\x58","\xc5","\x47","\xdb"),
	HX_HCSTRING("runCommand","\x40","\x01","\xea","\xeb"),
	HX_HCSTRING("runExpr","\x20","\x12","\x5b","\xd0"),
	HX_HCSTRING("registerObject","\x82","\x05","\x81","\xdb"),
	HX_HCSTRING("registerFunction","\x9b","\xa8","\x15","\x13"),
	HX_HCSTRING("getFields","\xaf","\x17","\xe5","\xfc"),
	HX_HCSTRING("sortFields","\x77","\x04","\x74","\xdd"),
	HX_HCSTRING("log","\x84","\x54","\x52","\x00"),
	::String(null())
};

void ConsoleUtil_obj::__register()
{
	hx::Object *dummy = new ConsoleUtil_obj;
	ConsoleUtil_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("flixel.system.debug.console.ConsoleUtil","\xba","\x4f","\xd6","\xa9");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &ConsoleUtil_obj::__GetStatic;
	__mClass->mSetStaticField = &ConsoleUtil_obj::__SetStatic;
	__mClass->mMarkFunc = ConsoleUtil_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(ConsoleUtil_obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = hx::TCanCast< ConsoleUtil_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = ConsoleUtil_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = ConsoleUtil_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = ConsoleUtil_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace flixel
} // end namespace system
} // end namespace debug
} // end namespace console
