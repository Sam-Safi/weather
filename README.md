# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Setup
*  We can create a new Rails project in this case our database is PostgreSQL.
  
  Create a project called weatherapp with the following command:
  
  **rails new weather --database=postgresql**
  
* To start the API server, run rails s, then access endpoints as described below. Default port on localhost is 3000

*Now lest build our project
* Step 1
* Authentication with Bcrypt
* Create a user model with a name, email and password_digest (all strings) by entering the following command into the command line: rails **generate model user name email password_digest**.
* Run in your terminal  $ rails db:create
* Run rake db:migrate in the command line to migrate the database.
* Add these routes below to your routes.rb file.

** # config/routes.rb
   
   GifVault::Application.routes.draw do
       
       get '/signup' => 'users#new'
       post '/users' => 'users#create'
   
   end