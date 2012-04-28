# Ruby on Rails Tutorial: Sample Application w/ MongoDB

This is a sample application based on
[*Ruby on Rails Tutorial: Learn Rails by Example*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/).

It has been modified to use MongoDB rather than ActiveRecord. To install mongo on MacOS with HomeBrew, type: 

      sudo brew install mongo

Give it some place to store data:

      mkdir /data/ /data/db

And set it running:

      sudo mongod

If desired, automated RSpec tests are invoked by Guard on a DRb (Spork) pre-loaded environment. To start Guard, run:

      guard

Guard will send notifications via [Growl](http://growl.info/downloads) if you have it installed. You'll also need to have [GrowlNotify](http://growl.info/extras.php#growlnotify) and be sure your version of GrowlNotify matches your version of Growl.

Spork is invoked by Guard, so if Guard is running, so is Spork. However, you can run Spork independently, enter:

      spork

Simple as that. To gain the benefit of faster tests when run manually, remember to use the --drb option like so:

      rspec spec/requests/my_test_spec.rb --drb

Enjoy!