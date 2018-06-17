MonoList
========

Have too many things in your house? Manage them with MonoList.

![](http://gyazo.com/d69acf3db561a456422821c34c742da7.png)

Features
--------

* Make folder and register items
* Upload photo
* Tagging

Requirements
------------

* Ruby (tested with 2.5.1)
* Imagemagick (eg. `$ brew install imagemagick`)

Install
-------

    $ gem i bundler
    $ bundle install
    $ bundle exec rake db:migrate
    $ bundle exec rails s
    $ open http://localhost:3000/

Uploaded images are stored under ./public/system.

Production
----------

    $ rake secret
    (snip)
    $ vi config/secrets.yml
    # Add secret_key_base for production
    $ vi config/initializers/monolist.rb
    # Edit password to enable basic auth
    $ vi config/application.rb
    # Edit timezone (if you are not in JST)
    $ bundle exec rake assets:precompile
    or:
    $ bundle exec rake assets:precompile RAILS_RELATIVE_URL_ROOT=/monolist

License
=======

* MIT
* public/favicon.ico: http://www.famfamfam.com/lab/icons/silk/ (table.png)

Contact
=======

https://github.com/yhara/monolist

Yutaka HARA (yhara)
