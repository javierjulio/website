# Getting Started With dotfiles

Let's start off easy. A dot file is hidden from any normal directory browsing tools so for example, on a Mac, a file such as `.gitignore` wouldn't be visible in Finder (although you can disable this feature). Dot files are used to contain startup or configuration data. In the case of a `.gitignore` file that would contain a list of files you would like Git to ignore. Simple right? Good.

## What's The Deal With These Dotfiles Projects?

First off a dot file, such as `.gitignore` is a file hidden from any normal directory browsing tools. The projects you'll see many GitHubbers have called "dotfiles" contain these various hidden files and other useful scripts. Depending on the developer you'll find just about everything: bash, zsh, Ruby, 

Searching on GitHub you'll notice many developers have projects by the name of dotfiles. As you use more command line tools it becomes useful to not only have this backed up and version controlled but to also share with others what configuration and shell scripts you use.

I've learned a great deal from others sharing. One example, I discovered you can create a config file for IRB (Interactive Ruby Shell) called `.irbrc` that can `require 'irb/completion'` to offer tab completion in Terminal. I didn't think I'd ever use IRB but lately its become quite useful. With this configuration even more!

## Getting Started

Since dotfiles vary in using zsh, or bash and zsh, others use Rakefiles and some Makefiles, its best to figure out what you focus in and look to existing dotfiles for a starting point. I wanted to use Zach Holman's excellent setup but quickly learned it was way more than I needed and focused on zsh which I don't know.

I've settled with Andrew Carter's setup since he's a Ruby developer, he has a simple `Rakefile` in place that will install any files to your home directory and rename them with a dot prefix (e.g. changing `gitignore` to `.gitignore`).


Most dotfiles I've come across focus on zsh which I'm not familiar with but I am with bash so I didn't want to change my shell to use zsh for now. If that's what you use you'll have no trouble finding lots of great dotfiles to start off from.

Since my focus was on bash and Ruby, I went with Aaron Carter's dotfiles setup which is the simplest. I wanted to have a lot of organization as in Zach Holman's setup but I realized it was way more than what I had. As I deal more with CLI I'm sure my dotfiles will grow.

I copied over Andrew's `Rakefile` which will take care of converting my files to actual dotfiles. Notice  


I'm not familiar with zsh but I know of bash and have done some very simple scripts so I've stuck with dotfiles that mainly focus on bash.

## Resources

This is a list of resources I used to create my own dotfiles project from. 

* https://github.com/ascarter/dotfiles
* https://github.com/holman/dotfiles
* https://github.com/rtomayko/dotfiles
* https://github.com/ryanb/dotfiles
* https://github.com/minhajuddin/dotfiles

Aaron Carter's is the main one I've gone with as its the simplest. A `Rakefile`

Further on down I'll list some I've come across and used as my starting point.
