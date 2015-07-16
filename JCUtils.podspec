#
# Be sure to run `pod lib lint JCUtils.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JCUtils"
  s.version          = "0.1.0"
  s.summary          = "Utilities often used in applications."
  s.description      = <<-DESC
						Contains Date Formatters, Animation Helpers and the like
                       DESC
  s.homepage         = "https://github.com/jusco/JCUtils"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Justin Cockburn" => "jusco@seas.upenn.edu" }
  s.source           = { :git => "https://github.com/jusco/JCUtils.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'JCUtils' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # 
end
