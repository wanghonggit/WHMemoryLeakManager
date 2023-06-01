#
# Be sure to run `pod lib lint WHMemoryLeakManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WHMemoryLeakManager'
  s.version          = '0.2.3'
  s.summary          = 'A short description of WHMemoryLeakManager.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wanghonggit/WHMemoryLeakManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wanghonggit' => '995406924@qq.com' }
  s.source           = { :git => 'https://github.com/wanghonggit/WHMemoryLeakManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'WHMemoryLeakManager/Classes/**/*'

  s.requires_arc = false
  s.requires_arc = [
    'WHMemoryLeakManager/Classes/fishhook/**/*.{c,h}',
    'WHMemoryLeakManager/Classes/FBRetainCycleDetector/**/*.{h,m,mm}',
    'WHMemoryLeakManager/Classes/MLeaksFinder/**/*.{h,m,mm}'
  ]
  s.framework = "Foundation", "CoreGraphics", "UIKit"
  s.library = 'c++'
  # s.resource_bundles = {
  #   'WHMemoryLeakManager' => ['WHMemoryLeakManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
#  s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
