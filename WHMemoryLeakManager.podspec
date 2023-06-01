#
# Be sure to run `pod lib lint WHMemoryLeakManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
class MyCode
def recursionDirCreateSubSpace(path1,space)
    ignore = ['.','..','.DS_Store']
    Dir.foreach(path1) do |file|
        # p file  # 打印所有的file，需要忽略掉你不需要的
        if ignore.include?(file) && file.length > 0
            next
        end
        tmpPath = "#{path1}/#{file}"
        # p tmpPath # 打印合理的路径，检测是否有不合理的记得过滤
        if File::ftype(tmpPath) == "directory"
            space.subspec file do |tmpS|
                tmpS.source_files = "#{tmpPath}/*"
                recursionDirCreateSubSpace(tmpPath,tmpS)
            end
        end
    end
end

Pod::Spec.new do |s|
  s.name             = 'WHMemoryLeakManager'
  s.version          = '0.1.1'
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
  
  MyCode.new.recursionDirCreateSubSpace("WHMemoryLeakManager/Classes",s)
  end
  # s.resource_bundles = {
  #   'WHMemoryLeakManager' => ['WHMemoryLeakManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
#  s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
