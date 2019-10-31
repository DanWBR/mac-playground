#define MONOMAC 1
#include <xamarin/xamarin.h>
#import <AppKit/NSAlert.h>
#import <Foundation/NSDate.h>



extern "C" int xammac_setup ()
{
	xamarin_marshal_objectivec_exception_mode = MarshalObjectiveCExceptionModeThrowManagedException;

	xamarin_debug_mode = TRUE;
	setenv ("MONO_GC_PARAMS", "major=marksweep-conc", 1);
	xamarin_supports_dynamic_registration = TRUE;
	return 0;
}

