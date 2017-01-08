# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "rubygems-yardoc"
  gem.version       = '0.0.7'
  gem.authors       = ["KITAITI Makoto"]
  gem.email         = ["KitaitiMakoto@gmail.com"]
  gem.description   = %q{Provides a "gem yardoc" command which generates YARD documentations for specified gems}
  gem.summary       = %q{gem yardoc command-line tool}
  gem.homepage    = "https://gitlab.com/KitaitiMakoto/rubygems-yardoc"
  gem.license     = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'yard', '>= 0.8.0', '< 1.0.0'

  gem.add_development_dependency 'rubygems-tasks'
  gem.add_development_dependency 'rake'
end
