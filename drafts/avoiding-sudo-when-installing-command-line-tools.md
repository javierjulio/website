# Avoiding sudo when installing command line from source

Recently, I had wanted to work with Node.js and knew I had it installed from a few months ago but forgot how I installed it. There was no easy way to update it to the latest version so I searched for a how-to post and found [a great one](http://increaseyourgeek.wordpress.com/2010/08/18/install-node-js-without-using-sudo/) that talked specifically about installing while avoiding using sudo.

I realized a lot of what was written in that post I've been doing with other command line tools such as [rbenv](https://github.com/sstephenson/rbenv).

Essentially, what I've learned to do is checkout the source of what tool I need into a hidden folder (e.g. ~/.node) in my home directory and follow the installation instructions which usually involve updating your path (e.g. ~/.bash_profile).

I would shy away from doing this sort of setup before but I've become much more comfortable working with command line tools now. Being able to install from source is great as most of these tools are hosted on GitHub so I have a much easier time updating them.


TWEET: Avoiding sudo on command line tools by installing from source [URL] Tips learned from installing Node.js and from @sstephenson's rbenv

- http://increaseyourgeek.wordpress.com/2010/08/18/install-node-js-without-using-sudo/
- learned from rbenv to checkout source into home dir
- use . so its a hidden folder
- learned to get more comfortable with editing .bash_profile