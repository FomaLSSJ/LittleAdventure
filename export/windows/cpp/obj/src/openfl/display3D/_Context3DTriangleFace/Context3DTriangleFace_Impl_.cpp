// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_openfl_display3D__Context3DTriangleFace_Context3DTriangleFace_Impl_
#include <openfl/display3D/_Context3DTriangleFace/Context3DTriangleFace_Impl_.h>
#endif

HX_LOCAL_STACK_FRAME(_hx_pos_c6faaa6b9f0fc2b9_16__new,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_","_new",0xb305aa19,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_._new","openfl/display3D/Context3DTriangleFace.hx",16,0x186e7db4)
HX_LOCAL_STACK_FRAME(_hx_pos_c6faaa6b9f0fc2b9_25_fromInt,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_","fromInt",0x25080bed,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_.fromInt","openfl/display3D/Context3DTriangleFace.hx",25,0x186e7db4)
HX_LOCAL_STACK_FRAME(_hx_pos_c6faaa6b9f0fc2b9_32_toInt,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_","toInt",0x09ed4a7c,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_.toInt","openfl/display3D/Context3DTriangleFace.hx",32,0x186e7db4)
HX_LOCAL_STACK_FRAME(_hx_pos_c6faaa6b9f0fc2b9_10_boot,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_","boot",0xb50218ea,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_.boot","openfl/display3D/Context3DTriangleFace.hx",10,0x186e7db4)
HX_LOCAL_STACK_FRAME(_hx_pos_c6faaa6b9f0fc2b9_11_boot,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_","boot",0xb50218ea,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_.boot","openfl/display3D/Context3DTriangleFace.hx",11,0x186e7db4)
HX_LOCAL_STACK_FRAME(_hx_pos_c6faaa6b9f0fc2b9_12_boot,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_","boot",0xb50218ea,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_.boot","openfl/display3D/Context3DTriangleFace.hx",12,0x186e7db4)
HX_LOCAL_STACK_FRAME(_hx_pos_c6faaa6b9f0fc2b9_13_boot,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_","boot",0xb50218ea,"openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_.boot","openfl/display3D/Context3DTriangleFace.hx",13,0x186e7db4)
namespace openfl{
namespace display3D{
namespace _Context3DTriangleFace{

void Context3DTriangleFace_Impl__obj::__construct() { }

Dynamic Context3DTriangleFace_Impl__obj::__CreateEmpty() { return new Context3DTriangleFace_Impl__obj; }

void *Context3DTriangleFace_Impl__obj::_hx_vtable = 0;

Dynamic Context3DTriangleFace_Impl__obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< Context3DTriangleFace_Impl__obj > _hx_result = new Context3DTriangleFace_Impl__obj();
	_hx_result->__construct();
	return _hx_result;
}

bool Context3DTriangleFace_Impl__obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x218053dc;
}

int Context3DTriangleFace_Impl__obj::BACK;

int Context3DTriangleFace_Impl__obj::FRONT;

int Context3DTriangleFace_Impl__obj::FRONT_AND_BACK;

int Context3DTriangleFace_Impl__obj::NONE;

int Context3DTriangleFace_Impl__obj::_new(int a){
            	HX_STACKFRAME(&_hx_pos_c6faaa6b9f0fc2b9_16__new)
HXDLIN(  16)		int this1 = a;
HXDLIN(  16)		return this1;
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Context3DTriangleFace_Impl__obj,_new,return )

int Context3DTriangleFace_Impl__obj::fromInt(int s){
            	HX_STACKFRAME(&_hx_pos_c6faaa6b9f0fc2b9_25_fromInt)
HXDLIN(  25)		int this1 = s;
HXDLIN(  25)		return this1;
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Context3DTriangleFace_Impl__obj,fromInt,return )

int Context3DTriangleFace_Impl__obj::toInt(int this1){
            	HX_STACKFRAME(&_hx_pos_c6faaa6b9f0fc2b9_32_toInt)
HXDLIN(  32)		return this1;
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Context3DTriangleFace_Impl__obj,toInt,return )


Context3DTriangleFace_Impl__obj::Context3DTriangleFace_Impl__obj()
{
}

bool Context3DTriangleFace_Impl__obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"_new") ) { outValue = _new_dyn(); return true; }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"toInt") ) { outValue = toInt_dyn(); return true; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"fromInt") ) { outValue = fromInt_dyn(); return true; }
	}
	return false;
}

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *Context3DTriangleFace_Impl__obj_sMemberStorageInfo = 0;
static hx::StaticInfo Context3DTriangleFace_Impl__obj_sStaticStorageInfo[] = {
	{hx::fsInt,(void *) &Context3DTriangleFace_Impl__obj::BACK,HX_HCSTRING("BACK","\x27","\xa2","\xd1","\x2b")},
	{hx::fsInt,(void *) &Context3DTriangleFace_Impl__obj::FRONT,HX_HCSTRING("FRONT","\x89","\x50","\x7c","\x84")},
	{hx::fsInt,(void *) &Context3DTriangleFace_Impl__obj::FRONT_AND_BACK,HX_HCSTRING("FRONT_AND_BACK","\xa5","\x3d","\x6a","\xc1")},
	{hx::fsInt,(void *) &Context3DTriangleFace_Impl__obj::NONE,HX_HCSTRING("NONE","\xb8","\xda","\xca","\x33")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static void Context3DTriangleFace_Impl__obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Context3DTriangleFace_Impl__obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(Context3DTriangleFace_Impl__obj::BACK,"BACK");
	HX_MARK_MEMBER_NAME(Context3DTriangleFace_Impl__obj::FRONT,"FRONT");
	HX_MARK_MEMBER_NAME(Context3DTriangleFace_Impl__obj::FRONT_AND_BACK,"FRONT_AND_BACK");
	HX_MARK_MEMBER_NAME(Context3DTriangleFace_Impl__obj::NONE,"NONE");
};

#ifdef HXCPP_VISIT_ALLOCS
static void Context3DTriangleFace_Impl__obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Context3DTriangleFace_Impl__obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(Context3DTriangleFace_Impl__obj::BACK,"BACK");
	HX_VISIT_MEMBER_NAME(Context3DTriangleFace_Impl__obj::FRONT,"FRONT");
	HX_VISIT_MEMBER_NAME(Context3DTriangleFace_Impl__obj::FRONT_AND_BACK,"FRONT_AND_BACK");
	HX_VISIT_MEMBER_NAME(Context3DTriangleFace_Impl__obj::NONE,"NONE");
};

#endif

hx::Class Context3DTriangleFace_Impl__obj::__mClass;

static ::String Context3DTriangleFace_Impl__obj_sStaticFields[] = {
	HX_HCSTRING("BACK","\x27","\xa2","\xd1","\x2b"),
	HX_HCSTRING("FRONT","\x89","\x50","\x7c","\x84"),
	HX_HCSTRING("FRONT_AND_BACK","\xa5","\x3d","\x6a","\xc1"),
	HX_HCSTRING("NONE","\xb8","\xda","\xca","\x33"),
	HX_HCSTRING("_new","\x61","\x15","\x1f","\x3f"),
	HX_HCSTRING("fromInt","\xa5","\xdd","\xfa","\x57"),
	HX_HCSTRING("toInt","\x34","\xbe","\x11","\x14"),
	::String(null())
};

void Context3DTriangleFace_Impl__obj::__register()
{
	hx::Object *dummy = new Context3DTriangleFace_Impl__obj;
	Context3DTriangleFace_Impl__obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("openfl.display3D._Context3DTriangleFace.Context3DTriangleFace_Impl_","\xb6","\x06","\xe6","\x8f");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &Context3DTriangleFace_Impl__obj::__GetStatic;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mMarkFunc = Context3DTriangleFace_Impl__obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(Context3DTriangleFace_Impl__obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = hx::TCanCast< Context3DTriangleFace_Impl__obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = Context3DTriangleFace_Impl__obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = Context3DTriangleFace_Impl__obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = Context3DTriangleFace_Impl__obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

void Context3DTriangleFace_Impl__obj::__boot()
{
{
            	HX_STACKFRAME(&_hx_pos_c6faaa6b9f0fc2b9_10_boot)
HXDLIN(  10)		BACK = (int)1028;
            	}
{
            	HX_STACKFRAME(&_hx_pos_c6faaa6b9f0fc2b9_11_boot)
HXDLIN(  11)		FRONT = (int)1029;
            	}
{
            	HX_STACKFRAME(&_hx_pos_c6faaa6b9f0fc2b9_12_boot)
HXDLIN(  12)		FRONT_AND_BACK = (int)1032;
            	}
{
            	HX_STACKFRAME(&_hx_pos_c6faaa6b9f0fc2b9_13_boot)
HXDLIN(  13)		NONE = (int)0;
            	}
}

} // end namespace openfl
} // end namespace display3D
} // end namespace _Context3DTriangleFace
