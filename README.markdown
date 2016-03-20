rubygems-yardoc
===============

This gem provides `gem yardoc` command which generates YARD documentations for specified gems.

Installation
------------

    $ gem install rubygems-yardoc

Usage
-----

    $ gem yardoc GEMNAME [GEMNAME ...]

Makes `yardoc` directory into specified gem's doc directory and
YARD Documentation for the gem will be generated into the directory.

And this gem add `--document=[ri,rdoc,]yardoc` option to `gem install` command
which install YARD documentation. So, writing

    install: --document=ri,rdoc,yardoc
    update: --document=ri,rdoc,yardoc

in your $HOME/.gemrc will automatically generate YARD document on installing/updating gems.

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
