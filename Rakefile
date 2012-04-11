require 'serious'
require 'serious/tasks'
require 'fileutils'

# http://jasonseifer.com/2010/04/06/rake-tutorial
# http://tjstein.com/2011/04/classy-web-development-with-sinatra-and-heroku/

# http://felixclack.com/post/1470674900/override-a-rake-task
Rake::Task['server'].clear

task :server do
  puts "Server launching on http://localhost:3000 (in the background)"
  
  system "thin start -d"
  system "sass --watch assets/stylesheets:assets/stylesheets --style compressed"
end

task :stop do
  file = File.open("tmp/pids/thin.pid", "rb")
  process_id = file.read
  
  puts "", "Stopping server (process #{process_id})"
  
  system "kill #{process_id}"
  
  FileUtils.remove_dir("log") if File.directory? "log"
  FileUtils.remove_dir("tmp") if File.directory? "tmp"
end

task :start => [:server, :stop] do
  puts "Bye!"
end
