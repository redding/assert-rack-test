require "assert"
require "assert-rack-test"

module Assert::Rack::Test
  class UnitTests < Assert::Context
    desc "Assert::Context"
    subject{ @context_class }

    setup do
      @context_class = Assert::Context
    end

    should "include the Rack::Test::Methods" do
      assert_that(subject).includes(Rack::Test::Methods)
    end
  end
end
