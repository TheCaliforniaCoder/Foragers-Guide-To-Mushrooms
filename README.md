# The Forager's Guide To Mushrooms

## User Stories

* User creates an account and is taken to their home page

* User can get a full list of all mushrooms

* User can create a newly found mushroom

* User can edit mushrooms that may have new findings or changed properties 

* User can delete mushrooms if they’re endangered or simply don’t wish to see them in their list

* User can see tools they may need on their foraging trip

## Timeframe 

We were given a week to complete this solo assignment.

## Technologies Used

* Ruby 3.2.1

* Rails 7.0.4

* Postgresql as the database

* Puma as the web server 

* Turbo Rails

* Devise for Authentication

## Planning

* After finding my user stories, I constructed and ERD for the relationships between my models:

![Imgur](https://i.imgur.com/Qk0UwjV.png)

* I built basic wireframes to visualize the app

![Imgur](https://i.imgur.com/dKaNaKL.png)

# Build/Code Process

With Rails, I knew immediately that I wanted to create two models: one for the user and one for the mushrooms. I used Devise for authentication so the user can sign up, log in, log out and delete their account. One user has many mushrooms so I decided to use the 'after_create' callback in Rails so that after a user is created, they find a default set of mushrooms: 

* All users have default mushrooms:

![Imgur](https://i.imgur.com/R5cqIva.png)

I used an each method to iterate through each mushroom and display the default mushrooms to each user on the index page.

* From there, each user can find a link to show, edit delete or add a new mushroom

![Imgur](https://i.imgur.com/l14YLge.png)

# Challenges

Besides using Ruby on Rails for the first time, I'd say that I would have liked to use Bootstrap from the beginning instead of taking on the task of pure CSS within the time frame.  I needed to generate a few migrations to alter the tables I had so next time, I'd like to do a bit more planning now that I have a better understanding of Ruby on Rails. As for the CSS, I'll be using Bootstrap from now on:

! I needed to generate a few migrations to alter the tables I had so next time, I'd like to do a bit more planning now that I have a better understanding of Ruby on Rails. 

# Wins

I'd say that I learned a lot within this week of using Ruby on Rails. All of the mistakes I made showed me exactly what not to do in the future so now I feel more confident starting a new Rails project.

# Key Learnings & Takeaways

* To begin with, I underestimated exactly how useful Devise was so I'll definitely be using that in the future!
* I will NOT be using pure CSS in the limited time frame!
* In general, I feel like I have a better understanding of Ruby on Rails and postgresql.

# Future Improvements

As previosuly mentioned, going forward, I know what mistakes not to make in each part of the development process. Error driven development is something that boosts my problem solving abilities and requires me to learn more on the way to the solution. 







