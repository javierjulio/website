require 'serious'
require 'serious/tasks'
require 'fileutils'

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

namespace :server do
  desc "Starts the daemon Thin server and Sass watcher"
  task :processes do
    puts "Start Thin server as a daemon and Sass watcher normally"
    
    # Run Thin server as a daemon. We can retrieve its pid so we can kill 
    # the process when we decide to quit.
    system "thin start -d"
    
    # Run Sass watcher as continuous process. Once we hit CTRL+C to quit 
    # the start task will run the dependent stop task.
    system "sass --watch assets/stylesheets:assets/stylesheets --style compressed"
  end
  
  desc "Stops the daemon Thin server and cleans up"
  task :stop do
    # Retrieve Thin pid so we can kill that process.
    file = File.open("tmp/pids/thin.pid", "rb")
    process_id = file.read
    
    puts "", "Stopping server (process #{process_id})"
    
    system "kill #{process_id}"
    
    # Thin gem generates log and tmp folder but we won't need them.
    FileUtils.remove_dir("log") if File.directory? "log"
    FileUtils.remove_dir("tmp") if File.directory? "tmp"
  end
  
  desc "Starts a server hosting site on http://localhost:3000 with Sass enabled"
  task :start => [:processes, :stop] do
    puts "Bye!"
  end
end

task :default => :"server:start"
