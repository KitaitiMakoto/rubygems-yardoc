# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubygems/commands/yardoc_command'

Gem::Specification.new do |gem|
  gem.name          = "rubygems-yardoc"
  gem.version       = Gem::Commands::YardocCommand::VERSION
  gem.authors       = ["KITAITI Makoto"]
  gem.email         = ["KitaitiMakoto@gmail.com"]
  gem.description   = %q{Provides a "gem yardoc" command which generates YARD documentations for specified gems}
  gem.summary       = %q{gem yardoc command-line tool}
  gem.homepage    = "https://github.com/KitaitiMakoto/rubygems-yardoc"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'yard'

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'redcarpet'
end
