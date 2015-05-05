# TCG
A web app to assist Buyers/Sellers/Traders of TCG games.

Ruby Version: 2.1.5
Rails Version: 4.2

#Installation Guide 

To quickly get a local version of the server running install Ubuntu 14.04.
Install the proper version of ruby. To install ruby on ubuntu you can run the command

**sudo apt-get install ruby 2.1.5**

if you already have a version of ruby running on your computer then you should look into
running a version manager such as RVM or Rbenv. 

For more information visit: [Stackoverflow discussion of RVM](http://tinyurl.com/qcqxp4h)



Then run in the command line

**gem install rails**

After your environment is set up clone the repo. When completed cd into the directory in
the terminal. After this run

**bundle install**

This will install any gems listed in the gemfile as well as their dependencies.
Once completed without errors you are able to run the server. 

**bundle exec rails s**

Once the server is started you can point your browser towards localhost:3000 to view the
webpage. 


