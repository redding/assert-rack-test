# -*- encoding: utf-8 -*-
require File.expand_path('../lib/assert-rack-test/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kelly Redding", "Collin Redding"]
  gem.email         = ["collin.redding@me.com"]
  gem.description   = %q{Assert with Rack::Test}
  gem.summary       = %q{Assert with Rack::Test}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "assert-rack-test"
  gem.require_paths = ["lib"]
  gem.version       = Assert::Rack::Test::VERSION

  gem.add_dependency("assert",      ["~>1.0"])
  gem.add_dependency("rack-test",   ["~>0.6"])
end

