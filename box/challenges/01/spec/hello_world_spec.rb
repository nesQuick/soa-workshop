require_relative '../../shared/spec_helper'
require_relative '../lib/hello_world_app'

describe HelloWorldApp do
  describe "/hello_world" do
    before do
      get '/hello_world'
    end

    it "returns status 200" do
      expect(response.status).to be == 200
    end

    it "has a 'Hello World' body" do
      expect(response.body).to be == 'Hello World'
    end
  end
end
