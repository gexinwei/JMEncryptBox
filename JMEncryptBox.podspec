#
# Be sure to run `pod lib lint JMEncryptBox.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JMEncryptBox'
  s.version          = '0.1.3'
  s.summary          = 'An encrypt and decrypt framework with private algorithm.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'An encrypt and decrypt framework with private algorithm. You can use it to do encrypt and decrypt. Have fun with it.'

  s.homepage         = 'https://github.com/gexinwei/JMEncryptBox'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gexinwei' => 'gexinwei_nj@163.com' }
  s.source           = { :git => 'https://github.com/gexinwei/JMEncryptBox.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'JMEncryptBox/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JMEncryptBox' => ['JMEncryptBox/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.ios.vendored_frameworks = 'Frameworks/JMEncryptBox.framework'
  
end
