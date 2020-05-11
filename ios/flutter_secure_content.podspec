#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_secure_content.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_secure_content'
  s.version          = '0.0.1'
  s.summary          = 'Flutter plugin to secure content from screenshot or screen recording.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/Abhi9454/fluttersecure_content'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Abhishek Mishra' => 'mishra.abhi8888@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
