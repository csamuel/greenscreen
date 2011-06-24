# GreenScreen

## Introduction

GreenScreen is a build monitoring tool that is designed to be used as
a dynamic Big Visible Chart (BVC) in your work area.  It lets you add
links to your build servers and displays the largest possible
information on a monitor so that the team can see the build status
from anywhere in the room.

## Getting Started

To get the GreenScreen application itself, you can clone it from git:

    $ git clone git://github.com/csamuel/greenscreen.git

Or download the project by clicking on the 'download' link [on this page][dl].

[dl]: https://github.com/csamuel/greenscreen

To install all of GreenScreen's dependencies, switch to its directory
and do:

    $ gem install bundler
	$ bundle install

Once you've got GreenScreen on your machine, copy config.yml.sample to
config.yml:

    $ cp config.yml.sample config.yml

And then edit the config.yml file to add links to your build servers.
It contains instructions for how you can add the.  GreenScreen has
been tested with Jenkins, but can be used with any continuous
integration server that conforms to the [multiple project summary
reporting standard][cc-xml].

[cc-xml]: http://confluence.public.thoughtworks.org/display/CI/Multiple+Project+Summary+Reporting+Standard

This pretty much means that any of the flavours of cruise control
should work too.

Once you've got your configuration, you can start GreenScreen as
follows:

    ruby greenscreen.rb

Then go to this URL in your browser:

    http://localhost:4567/

You should see the status of all of your builds.  The screen will
refresh every 15 seconds to keep itself up to date.

If running on Windows, I'd suggest running Firefox in full screen
mode.  If on a Mac, either expand the window size to take up as much
space as possible, or try finding a plugin that lets you go full
screen.

## Passenger or other rack handlers

GreenScreen also includes a rackup file (`config.ru`) so you can
deploy it under whichever rack-supporting webserver you like.

## JRuby/Rack Configuration

Also included in this version is a warbler configuration suitable for creating a standalone executable or a war for deploying to your favorite servlet container.

## Credits

GreenScreen was original developed by [martinjandrews][mja].

[mja]: https://github.com/martinjandrews/greenscreen/

This version of GreenScreen is a fork of the updates made by [rsutphin][rs] and [customink][customink].

[rs]: https://github.com/rsutphin/greenscreen/
[customink]: https://github.com/customink/greenscreen/