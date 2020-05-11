#import "FlutterSecureContentPlugin.h"
#if __has_include(<flutter_secure_content/flutter_secure_content-Swift.h>)
#import <flutter_secure_content/flutter_secure_content-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_secure_content-Swift.h"
#endif

@implementation FlutterSecureContentPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterSecureContentPlugin registerWithRegistrar:registrar];
}
@end
