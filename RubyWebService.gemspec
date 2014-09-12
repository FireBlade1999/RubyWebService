
###
#
# coding utf-8
#

require 'rubygems'
require 'rubygems/package_task'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH:include?(lib)

spec = Gem::Specification.new do |s|
  s.name = "RubyWebService"
  s.version = '0.1'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README', 'LICENSE']
  s.summary = 'Ruby Web Application Example'
  s.description = s.summary
  s.authors = ["Steven J Williams"]
  s.email = ["steven.williams@bjss.com"]
  s.executables = ['bin/RubyWebService']
  s.files = %w(LICENCE README Rakefile) + Dir.glob("{bin,lib,spec}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
  s.add_development_dependency 'rspec', '~>2.0'
end

Gem::PackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end
