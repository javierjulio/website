require './app'
require 'serious'

Serious.set :title, 'Javier Julio'
Serious.set :author, 'Javier Julio'
Serious.set :url, 'http://www.javier-julio.com'

Serious.set :root, Dir.getwd
Serious.set :public, File.join(Dir.getwd, 'assets')
Serious.set :views, File.join(Dir.getwd, 'views')
Serious.set :articles, File.join(Dir.getwd, 'posts')

Serious.set :archived_on_index, 25

Serious.set :feed_url, 'http://feeds.feedburner.com/javierjulio'

Serious.set :date_format, '%A, %B %o %Y'

run MyApp
