#
# Be sure to run `pod lib lint WHMemoryLeakManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WHMemoryLeakManager'
  s.version          = '0.1.5'
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
  
  mrr_files = [
        'FBRetainCycleDetector/Associations/FBAssociationManager.h',
        'FBRetainCycleDetector/Associations/FBAssociationManager.mm',
        'FBRetainCycleDetector/Layout/Blocks/FBBlockStrongLayout.h',
        'FBRetainCycleDetector/Layout/Blocks/FBBlockStrongLayout.m',
        'FBRetainCycleDetector/Layout/Blocks/FBBlockStrongRelationDetector.h',
        'FBRetainCycleDetector/Layout/Blocks/FBBlockStrongRelationDetector.m',
        'FBRetainCycleDetector/Layout/Classes/FBClassStrongLayoutHelpers.h',
        'FBRetainCycleDetector/Layout/Classes/FBClassStrongLayoutHelpers.m',
        'MLeaksFinder/MLeaksMessenger.h',
        'MLeaksFinder/MLeaksMessenger.m',
        
      ]

    files = Pathname.glob("FBRetainCycleDetector/**/*.{h,m,mm}")
    files = files.map {|file| file.to_path}
    files = files.reject {|file| mrr_files.include?(file)}

    s.requires_arc = files.sort + [
      'fishhook/**/*.{c,h}'
    ]
  
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 arm64' }
  # s.resource_bundles = {
  #   'WHMemoryLeakManager' => ['WHMemoryLeakManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
