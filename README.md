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