require_relative '../../shared/spec_helper'
require 'hello_world_app'

describe HelloWorldApp::App do
  describe "authorized" do
    before do
      authorize 'last', 'unicorn'
    end

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

  describe "unauthorized" do
    %w{/hello /world}.each do |path|
      it "returns 401 for #{path}" do
        get path
        expect(response.status).to be == 401
      end
    end
  end
end
