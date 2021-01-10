# frozen_string_literal: true

# This file is automatically required when you run `assert`
# put any test helpers here.

# add the root dir to the load path
$LOAD_PATH.unshift(File.expand_path("..", __dir__))

# require pry for debugging (`binding.pry`)
require "pry"

require "test/support/factory"
