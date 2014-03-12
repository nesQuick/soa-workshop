# Challenge 08

Create another gem called ``hello_two_times``. It should be a web app that responds to ``GET`` requests on ``/hello`` and ``/world``, requests the same path on your ``hello_world_app`` application and returns it **two times** :)

Calls to ``hello_two_times`` should not require any authentication.

An example:

When making a call to ``/hello`` on your ``hello_two_times`` application it should return ``HelloHello``. But note, that *Hello* is not built into your new app but is remotely queried from ``hello_world_app``.

# Setup

This time the setup is a little tricky. We also skip automated tests for this challenge. You can run multiple web apps with ``rackup`` like this:

```sh
# Terminal 1
$ cd app1
$ rackup -p 4567
```

```sh
# Terminal 2
$ cd app2
$ rackup -p 4568
```

Note that our Vagrant box exposes only ports ``4567`` to ``4570`` to your computer.

**Remember that you have to create a ``config.ru`` file for your gems in order to run them with ``rackup``.**
