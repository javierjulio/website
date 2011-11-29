require 'rubygems'
require 'bundler'
Bundler.require

require './app'

# do NOT show posts with a future date
Serious.set :future, false

Serious.set :title, 'Javier Julio'
Serious.set :author, 'Javier Julio'
Serious.set :url, 'http://www.javier-julio.com'

Serious.set :root, Dir.getwd
Serious.set :public_folder, File.join(Dir.getwd, 'assets')
Serious.set :views, File.join(Dir.getwd, 'views')
Serious.set :articles, File.join(Dir.getwd, 'posts')

Serious.set :items_on_index, 4
Serious.set :archived_on_index, 25

Serious.set :feed_url, 'http://feeds.feedburner.com/javierjulio'

Serious.set :date_format, '%A, %B %o %Y'

run MyApp