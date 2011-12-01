require 'bootstrap'
require 'mocha'

unless defined? RSPEC_CONFIGURED # Reaaaally, rspec?
  RSpec.configure do |config|
    config.mock_with :mocha
  end
  RSPEC_CONFIGURED = true
end
