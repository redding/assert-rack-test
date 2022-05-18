# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "assert-rack-test/version"

Gem::Specification.new do |gem|
  gem.name          = "assert-rack-test"
  gem.version       = Assert::Rack::Test::VERSION
  gem.authors       = ["Collin Redding", "Kelly Redding"]
  gem.email         = ["collin.redding@me.com, kelly@kellyredding.com"]
  gem.summary       = "Assert with Rack::Test"
  gem.description   = "Assert with Rack::Test"
  gem.homepage      = "https://github.com/redding/assert-rack-test"
  gem.license       = "MIT"

  gem.files = `git ls-files | grep "^[^.]"`.split($INPUT_RECORD_SEPARATOR)

  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.5"

  gem.add_development_dependency("much-style-guide", ["~> 0.6.7"])
  gem.add_development_dependency("assert",           ["~> 2.19.8"])

  gem.add_dependency("rack-test", ["~> 1.1"])
end
