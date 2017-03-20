#
# Be sure to run `pod lib lint Framework.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "{{projectname}}"
  s.version          = "0.1.0"
  s.summary          = "A short description of {{projectname}}."
  s.description      = <<-DESC
                       An optional longer description of {{projectname}}

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/<GITHUB_USERNAME>/{{projectname}}"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "<Author>" => "<Email>" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/{{projectname}}.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.resource = '{{projectname}}.bundle'
  s.ios.vendored_library = '{{projectname}}.framework'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
