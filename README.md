[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This is the source for my personal website. For many years my website was on a traditional web host (FTP) and was built using ColdFusion. Now I've moved to using Ruby and Sinatra and deploying with Heroku. I've found this much easier as it follows the same approach to what I'm used to doing everyday. If you have any questions on getting started feel free to get in touch.

# Installation

```bash
git clone https://github.com/javierjulio/website.git ~/Projects/website
cd ~/Projects/website
bundle install
foreman start -f Procfile.dev
```
