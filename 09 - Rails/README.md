# Rails


Rails is a web application development framework written in the Ruby language. It allows you to write less code while accomplishing more than many other languages and frameworks. 

Rails is opinionated software. It makes the assumption that there is a "best" way to do things, and it's designed to encourage that way - and in some cases to discourage alternatives.

The Rails philosophy includes two major guiding principles:

* Don't Repeat Yourself

* Convention Over Configuration

# Installation
Verify that you have a current version of Ruby installed:

```
$ ruby -v
ruby 2.3.1p112
```

Rails requires Ruby version 2.2.2 or later. If the version number returned is less than that number, you'll need to install a fresh copy of Ruby.

To install Rails, use the gem install command provided by RubyGems:

```
$ gem install rails
```

To verify that you have everything installed correctly, you should be able to run the following:

```
$ rails --version

```

You will also need an installation of the SQLite3 database. Many popular UNIX-like OSes ship with an acceptable version of SQLite3. On Windows, if you installed Rails through Rails Installer, you already have SQLite installed. Others can find installation instructions at the SQLite3 website. Verify that it is correctly installed and in your PATH:

```
$ sqlite3 --version
```

# Creating a new application

Rails comes with a number of scripts called generators that are designed to make your development life easier by creating everything that's necessary to start working on a particular task. One of these is the new application generator, which will provide you with the foundation of a fresh Rails application so that you don't have to write it yourself.

To use this generator, open a terminal, navigate to a directory where you have rights to create files, and type:

```
$ rails new tweeter
```

This will create a Rails application called Tweeter in a blog directory and install the gem dependencies that are already mentioned in Gemfile using bundle install.

The blog directory has a number of auto-generated files and folders that make up the structure of a Rails application. 

## Starting up the Web Server
You actually have a functional Rails application already. To see it, you need to start a web server on your development machine. You can do this by running the following in the blog directory:

```
$ bin/rails server
```

This will fire up Puma, a web server distributed with Rails by default. To see your application in action, open a browser window and navigate to http://localhost:3000. You should see the Rails default information page:

# MVC
The Model-View-Controller (MVC) is an architectural pattern that separates an application into three main logical components: the model, the view, and the controller. Each of these components are built to handle specific development aspects of an application. MVC is one of the most frequently used industry-standard web development framework to create scalable and extensible projects.

![Screen Shot 2019-03-29 at 12 24 26 PM](https://user-images.githubusercontent.com/7410981/55257622-ad81b980-521d-11e9-8150-b4bae8db0206.png)

or better, imagine it's like a sushi restaurant:

![Screen Shot 2019-03-29 at 12 24 26 PM](https://user-images.githubusercontent.com/7410981/55259102-fd627f80-5221-11e9-8214-58190b207e9c.png)


# Welcome!

Let's create our very first rails controller and view:

```ruby
$ rails generate controller welcome index
```

Rails will create several files and a route for you. Don't worry this is perfectly normal.

let's replace the content in `app/views/welcome/index.html.erb` to something more descriptive:

```html
<h1> Welcome to Rails! </h1>
```

If you hit: http://localhost:3000/welcome/index you will see your welcome page in action!

## Gems
RubyGems is a package manager for the Ruby that provides a standard format for distributing Ruby programs and libraries (in a self-contained format called a "gem"), a tool designed to easily manage the installation of gems, and a server for distributing them.

Let's try adding new gems to the project, open the `Gemfile` and paste the following code:

```
  gem 'slim'
  gem 'pry-rails'
  gem 'bootstrap-sass'
  gem 'simple_form'
```

then, run:

```
$ bundle install
```

# Creating a tweeter clone

Our aim is to build a small tweeter clone. We are going to create a tweets controller & views and also a model with it's migration. 

## Controllers

A controller's purpose is to receive specific requests for the application. Routing decides which controller receives which requests. Often, there is more than one route to each controller, and different routes can be served by different actions. Each action's purpose is to collect information to provide it to a view.

Let's create a tweets controller:

```ruby
$ rails generate controller tweets index show new create update edit destroy
```

This will create all 7 CRUDS methods that we need.

## Views

A view's purpose is to display this information in a human readable format. An important distinction to make is that it is the controller, not the view, where information is collected. The view should just display that information. By default, view templates are written in a language called eRuby (Embedded Ruby) which is processed by the request cycle in Rails before being sent to the user.

Views are created when you run:

```ruby
$ rails generate controller tweets index show new create update edit destroy
```

So they should be already created for you!

## Models
A model is a Ruby class that can add database records (think of whole rows in an Excel table), find particular data you're looking for, update that data, or remove data. These common operations are referred to by the acronym CRUD--Create, Remove, Update, Destroy.

```ruby
$ rails generate model tweet
```

leave it sink there for a while, we will need it in later!


## Migrations

Migrations allows you to use Ruby to define changes to your database schema, making it possible to use a version control system to keep things synchronized with the actual code.

To create a migration: 

```rails generate migration create_tweets```

### Active Record
Active Record is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic. Active Record facilitates the creation and use of business objects whose data requires persistent storage to a database. 





