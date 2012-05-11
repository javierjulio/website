This is the source for my personal website. For many years my website was on a traditional web host and was built using ColdFusion. Now I've moved to using Ruby and Sinatra and deploying with Heroku. I've found this much easier and since it follows the same approach to what I'm used to doing everyday (commits, CLI, etc.) I figure its better than dealing with FTP. I love it so far. I've had a great time learning Ruby, Sinatra and Heroku. Highly recommended. If you have any questions on getting started feel free to get in touch.

# Installation

* Clone repository
* Run `bundle install`
* Create `Procfile` with the following contents (not versioned since I don't want it deployed to Heroku)

        web:    bundle exec shotgun --server=thin --port=3000
        sass:   bundle exec sass --watch assets/stylesheets:assets/stylesheets --style compressed
