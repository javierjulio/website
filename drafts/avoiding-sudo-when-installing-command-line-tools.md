# Avoiding sudo when installing command line tools from source

Recently, I came across [an excellent and detailed Node.js installation post](http://increaseyourgeek.wordpress.com/2010/08/18/install-node-js-without-using-sudo/) that caught my attention since it focused on how to avoid using ```sudo```. The "long version" part proved most helped as it goes into detail on the what and why of every action you perform. A great read if command line isn't your strongest area.

I realized a lot of what was discussed I had done earlier for installing the excellent [rbenv tool](https://github.com/sstephenson/rbenv) so I deviated a little from the instructions by instead installing into a hidden folder in my home directory (e.g. ~/.node) and then updating my path in my ```~/.bash_profile``` file. That last step I had to tweak as I installed to a hidden directory:

	$ echo 'export PATH="$HOME/.node/bin:$PATH"' >> ~/.bash_profile

With that I had Node.js successfully installed from source on my MacBook all while avoiding ```sudo```. For some of you this might seem trivial but a lot of this I didn't take the time to understand. Now though I know the difference.

I've grown used to installing from source where in the past I wouldn't have but with enough of the projects I want to use being hosted on GitHub (which I love!) the workflow I know well and it remains consistent. Its easy enough to do that its worth the effort rather than install from a third party like Homebrew where it might not have the latest version.



Essentially, what I've learned on how to avoid ```sudo``` is to checkout the source of what tool I need into a hidden folder in my home directory (e.g. ~/.node) and follow the installation instructions which usually as some point involve updating your path (e.g. ~/.bash_profile). This way I have control over how to update and is not really any different from what I'm already used to doing.

TWEET: Avoiding sudo on command line tools by installing from source [URL] Tips learned from installing Node.js and @sstephenson's rbenv