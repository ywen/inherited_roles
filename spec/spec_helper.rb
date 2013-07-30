require 'simplecov'
SimpleCov.start do
  SimpleCov.refuse_coverage_drop
  SimpleCov.minimum_coverage 100
end

require 'rspec/core'
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}
require "#{File.dirname(__FILE__)}/../lib/inherited-roles"

RSpec.configure do |config|
  config.mock_with :rspec
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
