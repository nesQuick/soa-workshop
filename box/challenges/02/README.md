# Challenge 02

Build a pure [Rack](http://rack.github.io/) app that responds to the follwing HTTP requests:

Path       | HTTP status | Body
---------- | ------------|-------
``/hello`` | 200         | "Hello"
``/world`` | 200         | "World"
other      | 404         | "Not Found"

# Setup

Don't forget to install the dependencies using Bundler. You can speed this process up by using:

```sh
$ bundle install --local
```

which will try to resolve the dependencies only locally from on your machine.
