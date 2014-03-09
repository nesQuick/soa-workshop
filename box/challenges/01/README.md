# Challenge 01

Build a pure [Rack](http://rack.github.io/) app that responds to HTTP requests for the ``/hello_world`` path with a HTTP status code ``200`` and the body: ``Hello World``.

# Setup

```sh
$ bundle install
```

# Development

Change the code in ``lib/hello_world_app.rb`` to solve the challenge.

You can run a webserver that runs your app at all times with

```sh
# run from within the challenges/01 folder
$ bundle exec rackup
```

This will spawn a web server that you can reach at: http://localhost:9292

You can stop the web server with *Ctrl+C*.

# Test / Compliance

Run

```sh
$ bundle exec rake
```

to check if your app complies with all the challenge's rules. Yay! :tada:
