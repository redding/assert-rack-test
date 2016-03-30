require 'assert'
require 'assert-rack-test'

module Assert::Rack::Test

  class UnitTests < Assert::Context
    desc "Assert::Context"
    setup do
      @context_class = Assert::Context
    end
    subject{ @context_class }

    should "include the Rack::Test::Methods" do
      assert_includes Rack::Test::Methods, subject
    end

  end

end
