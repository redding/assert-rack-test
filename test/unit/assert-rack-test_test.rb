require 'assert'

module Assert::Rack::Test

  class BaseTest < Assert::Context
    desc "Assert::Context"
    setup do
      @class = Assert::Context
      @instance = Assert::Context.new
    end
    subject{ @instance }

    should have_instance_methods :get, :post, :put, :delete

    should "include the Rack::Test::Methods" do
      assert_includes Rack::Test::Methods, @class.included_modules
    end
  end

end
