require 'rake/clean'
require 'rubygems/specification'
require 'bundler/gem_helper'
require 'yard'

YARD::Rake::YardocTask.new

spec = Gem::Specification.load(File.join(File.dirname(__FILE__), 'rubygems-yardoc.gemspec'))

desc "Build #{spec.name}-#{spec.version}.gem into the pkg directory."
task :build do
  Bundler::GemHelper.new.build_gem
end

desc "Build and install #{spec.name}-#{spec.version}.gem into system gems."
task :install do
  Bundler::GemHelper.new.install_gem
end

desc "Create tag v#{spec.version} and build and push #{spec.name}-#{spec.version}.gem to Rubygems"
task :release do
  Bundler::GemHelper.new.release_gem
end
