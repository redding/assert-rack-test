# Assert-Rack-Test

The [assert](https://github.com/teaminsight/assert) gem with [rack/test](https://github.com/brynary/rack-test). This gem just mixes in the Rack::Test methods into the Assert context, allowing you to use Rack::Test's get, post, put, etc... methods within an Assert context.

## Installation

In your Gemfile add:

    group :test do
      gem 'assert-rack-test'
    end

Then run `bundle install` to install the gem.

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

## License

Copyright (c) 2011 Kelly Redding, Collin Redding, and Team Insight

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.