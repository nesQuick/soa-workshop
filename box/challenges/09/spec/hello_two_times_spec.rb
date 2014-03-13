require_relative '../../shared/spec_helper'

require 'dotenv'
Dotenv.load!('.env.test')

require 'hello_world_app'
require 'hello_two_times'

# Replaces the connections adapter with a Rack based one
class HelloTwoTimes::Connection
  class << self
    alias _raw_hello_world_app hello_world_app
    def hello_world_app
      return @mocked_hello_world_connection if @mocked_hello_world_connection
      connection = _raw_hello_world_app
      # This Faraday adapter uses the app directly instead of going through real HTTP
      connection.adapter :rack, HelloWorldApp::App.new
      @mocked_hello_world_connection = connection
    end
  end
end

describe HelloTwoTimes::App do
  describe "/hello" do
    before do
      get '/hello'
    end

    it "responds with hello twice" do
      expect(response.body).to be == 'Hello' * 2
    end
  end

  describe "/world" do
    before do
      get '/world'
    end

    it "responds with world twice" do
      expect(response.body).to be == 'World' * 2
    end
  end
end
