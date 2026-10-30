#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_tts'
  s.version          = '0.0.1'
  s.summary          = 'A flutter text to speech plugin.'
  s.description      = <<-DESC
A flutter text to speech plugin
                       DESC
  s.homepage         = 'https://github.com/dlutton/flutter_tts'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'eyedeadevelopment' => 'eyedea32@gmail.com' }
  s.source           = { :path => '.' }
  # Swift Package Manager and CocoaPods both build this plugin, from the same files. The sources
  # moved to flutter_tts/Sources/flutter_tts for SPM's required layout, so this points there; the
  # public_header_files line is gone with the Objective-C shim it described.
  s.source_files = 'flutter_tts/Sources/flutter_tts/**/*.swift'
  s.dependency 'Flutter'
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.static_framework = true
end

