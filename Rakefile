

###
#
# This is a software task management file. It allows you to
# specify tasks and describe dependencies as well as group
# tasks in a namespace. Similar to Make, similar to a POM
#
# When any of the requires fail, check >gem which [required] to see if
# it is indeed installed. If it isn't, >gem install [required]
#
# coding utf-8
#

require 'rake'
require 'rake/clean'
require 'rdoc/task'
require 'rake/testtask'
require 'rspec/core/rake_task'

Rake::RDocTask.new do |rdoc|
  files = ['README', 'LICENCE', 'lib/**/*.rb']
  rdoc.rdoc_files.add(files)
  rdoc.main = "README" # page to start on
  rdoc.title = "RubyWebService Docs"
  rdoc.rdoc_dir = 'doc/rdoc' # rdoc output folder
  rdoc.options << '--line-numbers'
end

RSpec::Core::RakeTask.new do |spec|
  spec.pattern = 'spec/erector/*_spec.rb'
  spec.rspec_opts = [Dir["lib"].to_a.join(':')]
end

Rake::TestTask.new do |t|
  t.libs << "tests"
  t.test_files = FileList['tests/*.rb']
  t.verbose = true
end
