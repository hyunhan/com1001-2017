# Code examples for COM1001, Spring Semester 2017

Clone this repository to obtain the code examples used in lectures. The examples appear in lecture order (i.e., "1" is the first lecture etc.).

Refer to the lecture slides for information on how they are supposed to be used.

### Installing the examples

The examples require various gems. The best way to install these is to use Bundler with the provided Gemfiles. First install Bundler if you haven't already:

`gem install Bundler`

Note that you may need to prefix the above with `sudo` if you're working with Codio.

Then, for the lecture for which you want to run the examples for, ensure you've run `bundle install` in its directory to install the relevant gems.

### Killing off open Sinatra sessions.

The `killruby.sh` file is a bash script that may be used to kill Ruby/Sinatra processes that you forgot to terminate with CTRL+C. 

When you start a Sinatra app, the web server continually listens for HTTP requests and does not terminate on its own. If you close a terminal without closing any Ruby/Sinatra processes, they will still be running in the background. This means you won't be able to start any new Sinatra apps on the same port --- you'll need to kill the old one first. To do this, open a new terminal and type:

`pkill ruby`
