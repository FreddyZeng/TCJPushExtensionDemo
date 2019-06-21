#
# Be sure to run `pod lib lint TCJPushExtensionDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TCJPushExtensionDemo'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TCJPushExtensionDemo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/freddyzeng/TCJPushExtensionDemo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'freddyzeng' => 'fanrong@addcn.com' }
  s.source           = { :git => 'https://github.com/freddyzeng/TCJPushExtensionDemo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TCJPushExtensionDemo/Classes/**/*'
  s.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$PROJECT_DIR/JPush' }
  
  s.script_phase = { :name => 'CommonCrypto', :script => "touch \"${PROJECT_DIR}/JPush/module.modulemap\"; \ncat <<EOF > \"${PROJECT_DIR}/JPush/module.modulemap\"\nmodule JPush [system] {\n\theader \"JPUSHService.h\"\n\texport *\n}EOF", :execution_position => :before_compile }
  # s.resource_bundles = {
  #   'TCJPushExtensionDemo' => ['TCJPushExtensionDemo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
