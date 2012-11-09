# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smartHTTPants/version'

Gem::Specification.new do |gem|
  gem.name          = "smartHTTPants"
  gem.version       = SmartHTTPants::VERSION
  gem.authors       = ["Kyle Partridge"]
  gem.email         = ["partkyle@gmail.com"]
  gem.description   = %q{}
  gem.summary       = %q{Simple HTTP Client for RESTful services}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'httparty', '~> 0.8.0'

  gem.add_development_dependency 'rspec'
end
