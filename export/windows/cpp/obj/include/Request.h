// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#ifndef INCLUDED_Request
#define INCLUDED_Request

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS0(Request)
HX_DECLARE_CLASS1(flixel,FlxBasic)
HX_DECLARE_CLASS1(flixel,FlxObject)
HX_DECLARE_CLASS1(flixel,FlxSprite)
HX_DECLARE_CLASS2(flixel,text,FlxText)
HX_DECLARE_CLASS2(flixel,util,FlxTimer)
HX_DECLARE_CLASS2(flixel,util,IFlxDestroyable)
HX_DECLARE_CLASS1(haxe,Http)



class HXCPP_CLASS_ATTRIBUTES Request_obj : public hx::Object
{
	public:
		typedef hx::Object super;
		typedef Request_obj OBJ_;
		Request_obj();

	public:
		enum { _hx_ClassId = 0x11d6072f };

		void __construct();
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="Request")
			{ return hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return hx::Object::operator new(inSize+extra,true,"Request"); }
		static hx::ObjectPtr< Request_obj > __new();
		static hx::ObjectPtr< Request_obj > __alloc(hx::Ctx *_hx_ctx);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~Request_obj();

		HX_DO_RTTI_ALL;
		hx::Val __Field(const ::String &inString, hx::PropertyAccess inCallProp);
		hx::Val __SetField(const ::String &inString,const hx::Val &inValue, hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_HCSTRING("Request","\x2f","\x07","\xd6","\x11"); }

		 ::haxe::Http req;
		 ::Dynamic object;
		 ::flixel::util::FlxTimer timerStart;
		Float timerElapsed;
		 ::Dynamic callback;
		Dynamic callback_dyn() { return callback;}
		void login(::String login,::String password, ::flixel::text::FlxText message, ::Dynamic Callback);
		::Dynamic login_dyn();

		void test();
		::Dynamic test_dyn();

};


#endif /* INCLUDED_Request */ 
