require 'rake/clean'
require 'rubygems/tasks'
require 'yard'

CLOBBER.include Gem::Tasks::Project::PKG_DIR
CLOBBER.include "doc"

Gem::Tasks.new
YARD::Rake::YardocTask.new
