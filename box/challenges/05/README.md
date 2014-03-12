# Challenge 05

Use Rack::Builder and Rack middleware to secure your Sinatra app from [challenge 04](../04) with HTTP Basic authentication.

The username must be ``last`` and the password must be ``unicorn`` to access the app. The app should return a HTTP status 401 if the credentials do not match.

# Setup

Don't forget to install the dependencies using Bundler.
