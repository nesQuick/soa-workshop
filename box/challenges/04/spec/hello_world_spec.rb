# This uses challenge 02's specs!
# The code might be weird but I decided the cause to have the specs just once is worth it

# Require the challenge 02 version of the app
# This causes the spec of challenge 02 not load that app again, as it was already required once
require_relative '../../02/lib/hello_world_app'
# Undefine the HelloWorldApp class
Object.send(:remove_const, :HelloWorldApp)
# Now load this challenge's version of the HelloWorldApp
require_relative '../lib/hello_world_app'

# Finally: Run the specs for challenge 02
eval(IO.read(File.expand_path('../../../02/spec/hello_world_spec.rb', __FILE__)), binding)
