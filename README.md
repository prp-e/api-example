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

### Running the code 

Just type this : 

```rails s``` 

and a rails web server will start at `http://localhost:3000` for you. 

## Playing with the API

This is a _CRUD_ API. CRUD stands for __C__reate, __R__ead, __U__pdate and __D__estroy. These four functions are implemented for this API and you can practice creating, reading, updating and destroying entities using this API.

For making this more understandable, I preferred to write this section using `curl`. So, I write a quick guide here for you to understand flags I've used in `curl`. 

### Getting started with `curl`

If you use Linux or BSD, there's a chance that `curl` is installed on your system. If it's not, no worries. It's available in the repositories of most of these operating systems and you can install it. 

An example of the requests is : 

```curl -X POST -H "Content-Type: application/json" -d '{"name":"Foo", "item":"Bar"} http://server/api/v1/items/' ``` 

In this example : 

* `-X POST` : determines that our request is a _POST_ type of request. 
* `-H "Content-Type: application/json"` : it tells the request have a custom header which determines that you're sending a JSON object to the API. 
* `-d '{...}'` : it's just the JSON object we want to send to the API. 

Most of examples of this document can be handled by knowing these basic stuff of `curl`. 