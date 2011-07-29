require 'app'
require 'serious'

Serious.set :title, 'Javier Julio'
Serious.set :author, 'Javier Julio'
Serious.set :url, 'http://www.javier-julio.com'
Serious.set :views, File.join(Dir.getwd, 'views')
Serious.set :public, File.join(Dir.getwd, 'assets')
Serious.set :articles, File.join(Dir.getwd, 'posts')
Serious.set :root, Dir.getwd
Serious.set :date_format, '%A, %B %o %Y'

run MyApp
