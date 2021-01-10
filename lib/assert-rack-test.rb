# frozen_string_literal: true

require "assert/context"
require "rack/test"
require "assert-rack-test/version"

module Assert; end
module Assert::Rack; end

module Assert::Rack::Test
  def self.included(klass)
    klass.class_eval do
      include ::Rack::Test::Methods
    end
  end
end

Assert::Context.class_eval do
  include Assert::Rack::Test
end
