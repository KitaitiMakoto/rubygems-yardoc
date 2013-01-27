rubygems-yardoc
===============

This gem provides `gem yardoc` command which generate YARD documentation for specified gems.

Installation
------------

Add this line to your application's Gemfile:

    gem 'rubygems-yardoc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubygems-yardoc

Usage
-----

    $ gem yardoc GEMNAME [GEMNAME ...]

YARD Documentation for GEMNAME will be generated to `{GEM INSTALATION DIRECTORY}/doc/{GEMNAME}-{VERSION}/yardoc`

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
