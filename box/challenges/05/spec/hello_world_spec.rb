# This uses challenge 02's specs!
# The code might be weird but I decided the cause to have the specs just once is worth it

# Require the challenge 02 version of the app
# This causes the spec of challenge 02 not load that app again, as it was already required once
if require_relative '../../02/lib/hello_world_app'
  # Undefine the HelloWorldApp class
  Object.send(:remove_const, :HelloWorldApp)
end
# Now load this challenge's version of the HelloWorldApp
require_relative '../lib/hello_world_app'


describe HelloWorldApp do
  describe "authorized" do
    before do
      authorize 'last', 'unicorn'
    end

    # Finally: Run the specs for challenge 02
    eval(IO.read(File.expand_path('../../../02/spec/hello_world_spec.rb', __FILE__)), binding)
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
