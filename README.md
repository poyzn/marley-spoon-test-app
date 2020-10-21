# README

### Description

App for the test challenge https://gist.github.com/lawitschka/063f2e28bd6993cac5f8b40b991ae899.
The app  

### Stack

* Ruby version 2.7.1
* Ruby on Rails 6.0
* Postgresql 12
* Memcached 1.6.6
* Dockerized app based on ruby-2.7.1-slim-buster (Debian) image 

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

### How to run the app on local system

0. Make sure a docker is installed on the system
1. Clone a repo
2. Export master key env variable
    ```
    export RAILS_MASTER_KEY=e1693fd9b5020efc9c8d74c0189b8405
    ``` 
3. Start dockerized app
    ```
    docker-compose up
    ```
4. Open `http://localhost:3000` in browser
   
#### Thank you!
Any feedback would be greatly appreciated :)
