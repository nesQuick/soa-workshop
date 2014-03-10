# This uses challenge 05's specs!
# The code might be weird but I decided the cause to have the specs just once is worth it

# Require the challenge 02 and challenge 05 version of the app
# This causes the spec of challenge 05 not load those apps again, as it was already required once
require_relative '../../02/lib/hello_world_app'
require_relative '../../05/lib/hello_world_app'
# Undefine the HelloWorldApp class
Object.send(:remove_const, :HelloWorldApp)
# Now load this challenge's version of the HelloWorldApp
require_relative '../lib/hello_world_app'

# Finally: Run the specs for challenge 05
eval(IO.read(File.expand_path('../../../05/spec/hello_world_spec.rb', __FILE__)), binding)
