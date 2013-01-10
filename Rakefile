require 'serious'
require 'serious/tasks'

# Resources
# http://jasonseifer.com/2010/04/06/rake-tutorial
# http://tjstein.com/2011/04/classy-web-development-with-sinatra-and-heroku/

# Serious gem implements a server task that we want to override so 
# we can run Thin server and Sass watcher in a single task.
# http://felixclack.com/post/1470674900/override-a-rake-task
Rake::Task['default'].clear
Rake::Task['server'].clear

desc "Deploy to Heroku"
task :deploy do
  system "git push heroku master"
end

desc "Starts processes using Foreman"
task :server do
  system "bundle exec foreman start -f Procfile.dev"
end

task :default => :"server"
