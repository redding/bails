# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bails/version"

Gem::Specification.new do |gem|
  gem.name        = "bails"
  gem.version     = Bails::VERSION
  gem.authors     = ["Kelly Redding", "Collin Redding"]
  gem.email       = ["kelly@kellyredding.com", "collin.redding@me.com"]
  gem.summary     = "Bail out of Rails conventions."
  gem.description = "Bail out of Rails conventions."
  gem.homepage    = "https://github.com/redding/bails"
  gem.license     = "MIT"

  gem.files         = `git ls-files | grep "^[^.]"`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = '> 1.8'

  gem.add_development_dependency("assert", ["~> 2.17.0"])

end
