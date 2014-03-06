This is the source for my personal website. For many years my website was on a traditional web host and was built using ColdFusion. Now I've moved to using Ruby and Sinatra and deploying with Heroku. I've found this much easier and since it follows the same approach to what I'm used to doing everyday its better than dealing with FTP. I love it so far. I've had a great time learning Ruby, Sinatra and Heroku. Highly recommended. If you have any questions on getting started feel free to get in touch.

# Installation

* `git clone https://github.com/javierjulio/website.git ~/Projects/website`
* `cd ~/Projects/website`
* `bundle install`
* `touch Procfile.dev` and add the following contents

        web: bundle exec shotgun --server=thin --port=3000
        sass: bundle exec sass --watch assets/stylesheets:assets --style compressed
