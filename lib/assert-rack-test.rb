require 'assert'
require 'rack/test'

require 'assert-rack-test/version'

module Assert
  module Rack
    module Test

      def self.included(klass)
        klass.class_eval do
          include ::Rack::Test::Methods
        end
      end

    end
  end
end

Assert::Context.class_eval do
  include Assert::Rack::Test
end
