// The class named in pubspec.yaml as the iOS pluginClass, and nothing more than a forwarder.
//
// It used to be FlutterTtsPlugin.h and .m, an Objective-C shim whose whole body called through to
// SwiftFlutterTtsPlugin. A Swift Package Manager target cannot hold both Objective-C and Swift, so
// supporting SPM meant the shim had to go or the Swift had to go. Rewriting it in Swift keeps the
// name, which means pubspec.yaml is unchanged and an app using CocoaPods sees exactly what it saw
// before: the registrant still looks for FlutterTtsPlugin and still finds it.
//
// @objc keeps the name visible to the generated plugin registrant, which is Objective-C.
import Flutter

@objc(FlutterTtsPlugin)
public class FlutterTtsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    SwiftFlutterTtsPlugin.register(with: registrar)
  }
}
