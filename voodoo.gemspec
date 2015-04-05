#
# voodoo/voodoo.gemspec
#
lib = File.expand_path('lib', File.dirname(__FILE__))
$:.unshift lib unless $:.include?(lib)

require 'voodoo/version'

Gem::Specification.new do |s|
  s.name        = 'voodoo'
  s.summary     = 'A curses based game engine.'
  s.description = 'A curses based game engine, compatible with moon packages.'
  s.homepage    = 'https://github.com/IceDragon200/voodoo-engine'
  s.email       = 'mistdragon100@gmail.com'
  s.version     = Voodoo::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.date        = Time.now.to_date.to_s
  s.license     = 'MIT'
  s.authors     = ['Corey Powell']

  s.add_dependency 'curses',        '~> 1.0'

  #s.executables = ['voodoo-player']
  s.require_path = 'lib'
  s.files = []
  s.files += Dir.glob('{bin,lib,spec}/**/*')
end
