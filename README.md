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

* May work with Ruby >= 1.9 (Ruby 2.x is preferred.)
* Imagemagick (eg. `$ brew install imagemagick`)

Install
-------

    $ gem i bundler
    $ bundle install
    $ bundle exec rake db:migrate
    $ bundle exec rails s
    $ open http://localhost:3000/

Uploaded images are stored under ./public/system.

License
=======

* MIT

* public/favicon.ico is taken from http://www.famfamfam.com/lab/icons/silk/ (table.png)

Contact
=======

https://github.com/yhara/monolist

Yutaka HARA (yhara)
