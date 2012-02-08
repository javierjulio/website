# Using Thoughtbot's Laptop Script To Install Development Tools

Not to long ago I read Thoughtbot's excellent [Ruby guide to Mac OSX development](http://robots.thoughtbot.com/post/8700977975/2011-rubyists-guide-to-a-mac-os-x-development) that inspired me to create my own [laptop script](https://github.com/javierjulio/laptop) that would handle running all the shell commands to install the development tools I rely on.

You might ask "why bother?" as I wouldn't be going through laptops that often to have a need for this. The real motivator has always been documentation as I want to know what tools I have installed. I wouldn't remember otherwise if I started fresh. But the critical piece isn't so much knowing what was installed but **how**. Big difference.

This past summer I had installed Node.js when it was on version 0.4.x but didn't do much with it until this past December when Node was updated to version 0.6.7. For the life of me I couldn't remember how I installed Node so I could upgrade. Did I install using Homebrew? From source? From one of the downloadable installers? Honestly, I couldn't remember. Coming across Thoughtbot's post, I realized this wouldn't be an issue if I had with a simple shell script that would double as documentation.

I'd like to expand the script to account for tools that have been installed so as to not reinstall them or better yet to perform updates. For now though I'm pleased with it serving as documentation.