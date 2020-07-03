# A simple REST API written in Ruby on Rails

## Prerequisties 

* Installing Ruby programming language ([RVM](https://rvm.io) is recommended)
* Having a basic knowledge of API's and REST 
* Having a background in programming in Ruby (If you speak Persian, you can read [my book](book.rubydev.ir) on Ruby)
* Being familiar with rails (actually, if you know what rails is, is enough.)
* Being familiar with basic SQL commands 
* Node.js (`node` package version 12.0 or above. [NVM](https://github.com/nvm-sh/nvm) is recommended)
* Yarn (See this [link](https://classic.yarnpkg.com/en/docs/install) to learn how to install it.) 

## How to run

_This part only works on Linux or similar operating systems. On Windows you can use WSL. Not tested on macOS or BSD family of operating systems, but as long as you can use `curl` and `gpg` and [RVM](https://rvm.io) on your system it will work well._

### Getting the codes 

Just clone this repository : 

``` git clone https://github.com/prp-e/api-example``` 

### Installing libraries 

Go to the directory `api-example` then run this : 

```bundle``` 

It will install all needed packages and libraries. 

### Making the database 

Create the `sqlite` database and do the migrations:

```
rails db:setup
rails db:migrate 
``` 

_NOTE: some tutorials may recommend you use `rake` instead of `rails`, but both work just fine._