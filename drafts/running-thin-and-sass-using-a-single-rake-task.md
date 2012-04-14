# Running Thin and Sass using a single Rake task

Boy do I feel like an idiot. I spent an entire evening figuring out how to run a Thin server and Sass watcher (both running processes) using a single Rake task for when working on my site locally but I can do this all easily using the Foreman gem by just specifying each command in a Procfile. Well, either way I learned a lot.

I've started using Sass on a large site redesign project (Rails) and figured would be good to learn how to implement Sass on my site where I use Sinatra. While Sinatra makes it easy to render Sass I wanted to compile the files locally so they don't have to be generated on each request as my site is hosted on Heroku.

I didn't want to open a new Terminal tab just to start the Sass watcher. Not only is it an unnecessary extra step, I was afraid I'd forget too. With Thin I found I can run it in the background as a daemon and since I would be focusing on content and CSS updates, any Ruby related error output wasn't vital. The trick is to start Thin first as a daemon and then the Sass watcher as its a continuous running process. Once you hit CTRL+C to quit a `server:stop` Rake task is run that terminates the Thin daemon and removes the `tmp` and `log` folders that it created.

The Foreman gem makes this all super easy. I thougt there was some more to it but its as simple as just giving a unique name to each command as Foreman will print any output with that identifier. The following is what I have in my `Procfile`

web:    bundle exec shotgun --server=thin --port=3000
sass:   bundle exec sass --watch assets/stylesheets:assets/stylesheets --style compressed

With the above in the root of my project I just run `foreman start` and the gem handles the rest. I switched back to using the Shotgun gem as it reloads the app on every request (meaning it will pick up Ruby changes). I couldn't use it before because it didn't seem that I could pass extra options to Thin to have it run in the background but using Shotgun with Thin still proves to be fast.