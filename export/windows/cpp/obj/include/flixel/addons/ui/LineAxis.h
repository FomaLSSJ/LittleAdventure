// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#ifndef INCLUDED_flixel_addons_ui_LineAxis
#define INCLUDED_flixel_addons_ui_LineAxis

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS3(flixel,addons,ui,LineAxis)
namespace flixel{
namespace addons{
namespace ui{


class LineAxis_obj : public hx::EnumBase_obj
{
	typedef hx::EnumBase_obj super;
		typedef LineAxis_obj OBJ_;

	public:
		LineAxis_obj() {};
		HX_DO_ENUM_RTTI;
		static void __boot();
		static void __register();
		static bool __GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp);
		::String GetEnumName( ) const { return HX_HCSTRING("flixel.addons.ui.LineAxis","\x06","\xc5","\xca","\xe5"); }
		::String __ToString() const { return HX_HCSTRING("LineAxis.","\xb9","\xd3","\x4d","\x12") + _hx_tag; }

		static ::flixel::addons::ui::LineAxis HORIZONTAL;
		static inline ::flixel::addons::ui::LineAxis HORIZONTAL_dyn() { return HORIZONTAL; }
		static ::flixel::addons::ui::LineAxis VERTICAL;
		static inline ::flixel::addons::ui::LineAxis VERTICAL_dyn() { return VERTICAL; }
};

} // end namespace flixel
} // end namespace addons
} // end namespace ui

#endif /* INCLUDED_flixel_addons_ui_LineAxis */ 
