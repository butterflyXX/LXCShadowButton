#
# Be sure to run `pod lib lint LXCShadowButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LXCShadowButton'
  s.version          = '0.0.2'
  s.summary          = 'LXCShadowButton'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '这是一个按钮子类,主要实现的是设置按钮的渐变色及阴影'

  s.homepage         = 'https://github.com/butterflyXX/LXCShadowButton'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'butterflyXX' => 'liuxiaochen1991@icloud.com' }
  s.source           = { :git => 'https://github.com/butterflyXX/LXCShadowButton.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LXCShadowButton/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LXCShadowButton' => ['LXCShadowButton/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency  'Masonry'
end
