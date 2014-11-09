PassRuby
========
I made this for my newbie friends.  I want to help them learn test driven development and Ruby.
To get up and running:

1. Clone the repository:

    `git clone git@github.com:LNA/PassRuby.git`

2. cd into the repository 

    `cd PassRuby/`

3. Install the gem dependencies 

    `bundle install`

4. Start up guard 

    `guard`

5. Once you are inside of guard, running rspec will start with the first test and work your way through each exercise.  If you'd rather focus on a specific section, such as the refactoring exercises, do not use guard.  Instead, in your command line type:
 
    `rspec/spec/string`

This will start you off on the string section of PassRuby.  You can do the same for any directory you'd like.
* Write code in the lib directory to make each failing spec pass.  Check the Ruby Docks if you get stuck.
* Have fun!
* Send a pull request if you'd like to contribute! And Feedback is always welcome.
