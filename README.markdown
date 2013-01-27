rubygems-yardoc
===============

This gem provides `gem yardoc` command which generates YARD documentations for specified gems.

Installation
------------

Add this line to your application's Gemfile:

    gem 'rubygems-yardoc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubygems-yardoc

Installing `redcarpet` by writing:

    gem 'recarpet'

And executing:

    $ bundle

Or just executing:

    $ gem install redcarpet

often helps you because many gems use Markdown to write README files
and YARD require `redcapet` when parsing Markdown.

Usage
-----

    $ gem yardoc GEMNAME [GEMNAME ...]

Make `yard` directory into specified gem's doc directory and
YARD Documentation for the gem will be generated into the directory

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
