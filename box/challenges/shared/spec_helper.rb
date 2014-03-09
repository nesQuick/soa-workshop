ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'rack/test'

module SoaSpecHelpers
  def app
    described_class.new
  end

  def response
    last_response
  end
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include SoaSpecHelpers
end
