# README

The web applicatin is to represent the production of craft beers in the United States. The web application will display a map at the home page which the user can navigate through to each state’s information. The information in the website is segmented per state, brewery, craft beer, and craft style. Also the web application makes a comparison of the strongest beers produced, the craftiest states and the most brewed styles.  

Installation and use of the application

Local Use:
1.	Fork it from the repository 
2.	Open ruby/rails console and navigate to the directory where the UCA app exits and run:
a.	bundle install
b.	rails db:migrate
c.	rake beers:seed_beers
d.	rake latlong:seed_latlong
3.	Start server by running ‘rails s’ and launch the browser and go to http://localhost:3000/

To deply to Heroku:
1.  Set your Heroku origin
2.  Install Heroku CLI and login
3.  Initialise you local Git repository. Run in the consol: 
a.  git init
4.  Add all files to your local Git repository. Run in the consol: 
a.  git add -A
5.  Commit in your local Git. Run in the consol: 
a.  git commit -m 'Initial commit'
6.  Run in the console: 
a.  git push heroku master
b.  heroku run rails db:migrate
c.  heroku run rake beers:seed_beers
d.	heroku run rake latlong:seed_latlong
7.  navigate to your app heroku url

