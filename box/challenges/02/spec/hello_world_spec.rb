require_relative '../../shared/spec_helper'
require_relative '../lib/hello_world_app'

describe HelloWorldApp do
  describe "/hello" do
    before do
      get '/hello'
    end

    it "returns status 200" do
      expect(response.status).to be == 200
    end

    it "has a 'Hello' body" do
      expect(response.body).to be == 'Hello'
    end
  end

  describe "/world" do
    before do
      get '/world'
    end

    it "returns status 200" do
      expect(response.status).to be == 200
    end

    it "has a 'World' body" do
      expect(response.body).to be == 'World'
    end
  end

  describe "random url" do
    before do
      get "/something-else"
    end

    it "returns status 404" do
      expect(response.status).to be == 404
    end

    it "has a 'Not Found' body" do
      expect(response.body).to be == 'Not Found'
    end
  end
end
