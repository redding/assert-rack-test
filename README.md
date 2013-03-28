# Assert-Rack-Test

The [assert](https://github.com/teaminsight/assert) gem with [rack/test](https://github.com/brynary/rack-test). This gem just mixes in the Rack::Test methods into the Assert context, allowing you to use Rack::Test's get, post, put, etc... methods within an Assert context.

## Usage

Use assert as you normally would. Inherit from a context and use any of rack test's methods in your tests:

```ruby
class BaseTest < Asset::Context
  desc "some test"
  setup do
    get '/some/route'
  end

  should "have returned a successful response" do
    assert_equal 200, last_response.status
    assert_equal "Some route indeed!", last_response.body
  end
end
```

You still need to define an app method, like you normally would for rack test:

```ruby
# app method for entire test suite
Assert::Context.class_eval do
  def app
    MyApp.new
  end
end

# or for one context
class BaseTest < Assert::Context

  def app
    OtherApp.new
  end

end
```

## Installation

Add this line to your application's Gemfile:

    gem 'assert-rack-test'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install assert-rack-test

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
