# README
This application was created as part of Advanced Web Application Development
course at University of Aberdeen. A live version of the 
application is available at https://fast-hamlet-66958.herokuapp.com
## Ruby version
* 2.6.4
## Rails version
* 6.0.1
## Packages used
* jQuery
* Leaflet
* Bootstrap
* Webpacker
* Devise
* Will_paginate
* Chartkick
* Open-weather
* Rails_admin
* Rubocop
* Rspec-rails
* Brakeman
* Factory_bot_rails
## Running application locally
* Run bundle install
* Ensure that /lib/assets contains the Melbourne_housing_FULL.csv file
* Create the database (the process is explained below)
* Access the application using http://localhost:3000
### Database creation process
1. Migrate the database schema
  * rails db:migrate
2. Import houses from CSV file,
  * rake houses:import
3. Create the admin user
  * rake admin:create
4. Create regular user
  * rake user:create
## Creator
* Nikita Romanenko (https://github.com/Sashfish) - StudentID: 51881316
