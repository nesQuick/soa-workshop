# Service Oriented Architectures in Web Applications

A workshop by Thorben Schröder

## Intro

This hands-on workshops is for web developers and students looking to make the shift from traditional, monolithic application design towards a future proof and modular approach.

Over the course of 2 days attendees will learn about the core theory behind service oriented applications while focussing on getting their feet wet and building one on their own.

Excersises and examples will be in Ruby. To master this adventure attendees must feel comfortable reading and writing simple Ruby and understand how traditional web apps work.

## Setup Vagrant

1. Install [VirtualBox](https://www.virtualbox.org/)
2. Install [Vagrant 1.1+](http://vagrantup.com/)
3. Setup the SOA box with:

```sh
$ cd box
$ vagrant up
```

### Fix File Permissions

```sh
$ sudo mount /vagrant -o remount;cd `pwd`
```

## Credits

This workshop thankfully uses the [rails-dev-box](https://github.com/rails/rails-dev-box) vagrant box which is released under the MIT license.
