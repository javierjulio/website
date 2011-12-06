# Using git tag in Bundler Gemfile for forked Ruby gem projects

On a recent project I was tasked with syncing data from our database to Salesforce for reporting. I searched for Ruby gems and came across databasedotcom and salesforce_bulk. Sadly, I had issues with both but thankfully since they were hosted on GitHub it was as easy as forking both and creating branches with fixes.

I updated the project's Gemfile with my forked copies and ran ```bundle install```. Afterwards though I realized I had to make more changes to the branch and that running ```bundle install``` wouldn't reinstall from git source. So I looked up how to tag in git and started tagging minor releases so as I updated the ```Gemfile``` with a new tag version, running ```bundle install``` would reinstall the gem from my fork.


- task to sync project data to Salesforce for reporting
- available gems, found: databasedotcom and salesforce_bulk
- issues with both gems that I could not wait on
- open source so I'll patch it myself
- forked the project and created a branch with custom changes required for my work project
- I started using the branch option in Bundler but I realized as I developed further changes Bundler wouldn't reinstall from git so I looked up [how to tag in git](http://gitref.org/branching/#tag) and created versions so that way Bundler would update if I changed the tag version for that project in my Gemfile.