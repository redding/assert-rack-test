require 'assert'
require 'rack/test'

module Assert
  module Rack
    module Test
      autoload :VERSION, "assert-rack-test/version"
    end
  end
end

Assert::Context.class_eval do
  include Rack::Test::Methods
end
