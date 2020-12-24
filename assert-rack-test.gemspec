# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "assert-rack-test/version"

Gem::Specification.new do |gem|
  gem.name          = "assert-rack-test"
  gem.version       = Assert::Rack::Test::VERSION
  gem.authors       = ["Collin Redding", "Kelly Redding"]
  gem.email         = ["collin.redding@me.com, kelly@kellyredding.com"]
  gem.summary       = %q{Assert with Rack::Test}
  gem.description   = %q{Assert with Rack::Test}
  gem.homepage      = "https://github.com/redding/assert-rack-test"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.5"

  gem.add_development_dependency("assert", ["~> 2.18.4"])
  gem.add_dependency("rack-test", ["~> 1.1"])

end

