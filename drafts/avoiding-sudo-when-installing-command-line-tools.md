# Avoiding sudo when installing command line tools from source

Recently, I came across [an excellent and detailed Node.js installation post](http://increaseyourgeek.wordpress.com/2010/08/18/install-node-js-without-using-sudo/) that caught my attention since it focused on how to avoid using ```sudo```. The "long version" part proved most helped as it goes into detail on the what and why of every action you perform.

I've grown comfortable and confident installing and using command line tools but that part of the post helped me reinforce a lot of tips I've learned lately.

I realized a lot of what was discussed I had done earlier for installing the excellent [rbenv tool](https://github.com/sstephenson/rbenv) so I deviated a little from the instructions by instead installing into a hidden folder in my home directory (e.g. ~/.node). I'm used to having other development related items there. I completed the rest of the installation instructions which usually involves updating your path but in my case I had a ```.bash_profile``` file so the last step I had to do differently:

	$ echo 'export PATH="$HOME/.node/bin:$PATH"' >> ~/.bash_profile

Installing both ```node``` and ```rbenv``` has helped me feel a lot more comfortable installing from source as they are hosted on GitHub which I love and most confident using. This has proven much easier to stay up to date and fits into my way of doing things development wise (essentially just using git) rather than having a mix of installation types.

Essentially, what I've learned on how to avoid ```sudo``` is to checkout the source of what tool I need into a hidden folder in my home directory (e.g. ~/.node) and follow the installation instructions which usually as some point involve updating your path (e.g. ~/.bash_profile). This way I have control over how to update and is not really any different from what I'm already used to doing.

It has proven easy enough to install these sort of tools from source and usually a better option if you want to keep up to date on the latest. Several of these projects are hosted on GitHub which 

I would shy away from doing this sort of setup before but I've become much more comfortable working with command line tools now. Being able to install from source is great as most of these tools are hosted on GitHub so I have a much easier time updating them.


TWEET: Avoiding sudo on command line tools by installing from source [URL] Tips learned from installing Node.js and @sstephenson's rbenv

- http://increaseyourgeek.wordpress.com/2010/08/18/install-node-js-without-using-sudo/
- learned from rbenv to checkout source into home dir
- use . so its a hidden folder
- learned to get more comfortable with editing .bash_profile