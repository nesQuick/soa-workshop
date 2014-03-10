require 'sinatra'

# HTTP Basic Auth uses Base64 (http://en.wikipedia.org/wiki/Basic_access_authentication)
# Ruby has  a method to decode Base64 encoded Strings in it's standard library:
# Base64.decode64("SGVsbG8gV29ybGQ=") # => "Hello World"
require 'base64'

class HelloWorldApp
  # Add your app in here
end
