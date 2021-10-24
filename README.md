# README

* Ruby version : 2.5.1

* Rails version : ~> 5.2.6

* Configuration : This app use sendgrid api and bootstrap cdn. 

* Database creation : `$ rails db:create`

* Database initialization : `$ rails db:migrate`

It works as it is on production whith heroku. Just be sure to downgrade heroku stack to 18 because the actual stack (20) doesn't support anymore this version of Ruby.  
So when creating the app use `$ heroku create --stack heroku-18`.  
When you change the stack on an existing app use `$ heroku stack:set heroku-18`.

Or upgrade ruby version. 

This app were made for a birthday party with a consequent number of participants. We wanted them to be able to participate financially throught a custom layout and website. Which gave us more credibility and created more commitment for this event.
