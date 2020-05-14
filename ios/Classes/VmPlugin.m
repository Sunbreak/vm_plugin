#import "VmPlugin.h"
#if __has_include(<vm_plugin/vm_plugin-Swift.h>)
#import <vm_plugin/vm_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "vm_plugin-Swift.h"
#endif

@implementation VmPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVmPlugin registerWithRegistrar:registrar];
}
@end
