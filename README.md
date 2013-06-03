# A Virtual Machine for Ruby on Rails Application Development

## Introduction

This project automates the setup of a development environment for general Ruby on Rails application development. 

Inspired by the book ["Deploying Rails"](http://pragprog.com/book/cbdepra/deploying-rails) and fxn's [rails-dev-box](https://github.com/rails/rails-dev-box)

**This project forked from ["https://github.com/amaia/rails-starter-box"](https://github.com/amaia/rails-starter-box) and updated for CentOS 6.4 x64**

## Notable Changes:

* Removed Postgres
* Added Puppet EPEL module for EPEL repositories and GPG keys
* Added sqlite Puppet module

## Requirements

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant](http://vagrantup.com)

## How To Build The Virtual Machine

Building the virtual machine is this easy:

    host $ git clone https://github.com/samueltbrown/rails-starter-box.git
	host $ cd rails-starter-box
    host $ git submodule init
    host $ git submodule update    
    host $ vagrant up

If the base box is not present that command fetches it first. 

    host $ vagrant ssh
    Welcome to your Vagrant-built virtual machine.
    vagrant@rails-starter-box:~$

Port 3000 in the host computer is forwarded to port 3000 in the virtual machine. Thus, applications running in the virtual machine can be accessed via localhost:3000 in the host computer.

## What's In The Box

* Git

* SQLite3, MySQL

* RVM (with ruby 1.9.3-p392 installed and set as default)

* Bundler, Rails and Rake gems for both rubies


## Recommended Workflow

The recommended workflow is

* edit files in the host computer

* run within the virtual machine


## Virtual Machine Management

When done just log out with and suspend the virtual machine

    host $ vagrant suspend

then, resume to hack again

    host $ vagrant resume

Run

    host $ vagrant halt

to shutdown the virtual machine, and

    host $ vagrant up

to boot it again.

You can find out the state of a virtual machine anytime by invoking

    host $ vagrant status

Finally, to completely wipe the virtual machine from the disk **destroying all its contents**:

    host $ vagrant destroy # DANGER: all is gone

Please check the [Vagrant documentation](http://vagrantup.com/v1/docs/index.html) for more information on Vagrant.
