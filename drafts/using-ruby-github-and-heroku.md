# Using Ruby, GitHub and Heroku

This past summer I grew tired of dealing with a web host and FTP for managing my website. I felt there should be a better and simpler way 

I'm not sure why it never occurred to me earlier but the combination of writing in Ruby, backing up in GitHub and then deploying with Heroku is killer.

A few months back I grew sick of dealing with web hosts as they have outdated sites, outdated processes and honestly, I grew tired of FTP. I didn't have my site backed up. And then somehow I realized after speaking with a friend who used Heroku to host his wedding site for free that I could do the same with mine since the content is all static.

I set out on rebuilding my site in Ruby using Sinatra. In an hour or two I had all my content moved over and the routes setup for all pages. It was painless and super easy. I'm grateful that I had used other frameworks in other languages (ColdFusion and JavaScript) that were very similar to Sinatra.

Once I had my site in a stable phase and working as I wanted locally I started reading on using Heroku. The documentation is quite good and its a very easy process all done using command line. I'm actually quite timid when it comes to CLI but one of the reasons I set out to learn Ruby and use Heroku was to become more comfortable using command line. Within minutes I had my site working and running on Heroku. As I made changes I fell in love with the workflow. I'd update my site in Coda, use Terminal to commit my changes (or GitHub Mac app), and then just a single command to push to Heroku. Dead easy and matches the same workflow I use when developing applications. No FTP. Sweet!

