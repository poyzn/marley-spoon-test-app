# README

### Description

App for the test challenge https://gist.github.com/lawitschka/063f2e28bd6993cac5f8b40b991ae899.
The app  

### Stack

* Ruby version 2.7.1
* Ruby on Rails 6.0
* Postgresql
* Memcached 
* Dockerized app

### Functionality

The app consists of two parts - frontend and backend.

#### Frontend

Frontend is build with ReactJS hooks and React Router.
App has two paths:

* `/` - shows list of recipes
* `/recipes/{id}` - shows a single recipe.

When user opens any page it runs React app which sends requests to api backend.
It doesn't matter which page is opened first.

#### Backend

Backend after receiving a request from the frontend do:

* if a list of recipes is requested it checks if the list is in cache.
If there's no list in the cache then list is fetched from a data source (contentful).
Then list is stored in cache for 1 minute since contentful has a limit of 55 requests per min.
* if a single recipe is requested it tries to find the recipe in the local db.
If there's no recipe in the local db then the recipe is fetched from remote data source
and is persisted to local db.  

### Features

* Modular architecture with SOLID and DRY principles
* Slim comtrollers and models. Main login and functionality in service objects
* Recipes querie object uses data sources injection 
* ReactJS on hooks and React Router  
* Test coverage

### How to run the app

0. Make sure a docker is installed on the system
1. Clone a repo
2. Export master key env variable
    ```
    export RAILS_MASTER_KEY=master.key
    ``` 
3. Start dockerized app
    ```
    docker-compose up
    ```
   
#### Thank you!
Any feedback would be greatly appreciated :)
