# Code examples for COM1001, Spring Semester 2017

Clone this repository to obtain the code examples used in lectures. The examples appear in lecture order (i.e., "1" is the first lecture etc.).

Refer to the lecture slides for information on how they are supposed to be used and run.

### killruby.sh script

The `killruby.sh` file is a bash script that may be used to kill Ruby/Sinatra processes that you forgot to terminate with CTRL+C. 

When you start a Sinatra app, the web server continually listens for HTTP requests and does not terminate on its own. If you close a terminal without closing any Ruby/Sinatra processes, they will still be running in the background. This means you won't be able to start any new Sinatra apps on the same port --- you'll need to kill the old one first. The `killruby.sh` script will kill all of these off for you. To call it from the command line, change directory to where the script lives and type

`./killruby.sh`

Instead of changing directory, you can just prefix the script with the directory where it lives, e.g.:

`~/workspace/lecture-examples/killruby.sh`
