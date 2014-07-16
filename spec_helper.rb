# Helper file to setup our tests/specs for this program.
# NO NEED TO EDIT

require 'pry'
require 'rspec' #'2.14.1'

def safely_require(file)
  require_relative file
rescue LoadError
  # ignore
end

# safely_require 'main'
# safely_require 'application'
safely_require 'contact'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter = :documentation
end