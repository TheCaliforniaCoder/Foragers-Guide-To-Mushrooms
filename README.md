# The Forager's Guide To Mushrooms

## Description

I opted to develop an application called "The Forager's Guide to Mushrooms," which helps users prepare for their mushroom foraging expeditions. The app enables users to manage their own personalized mushroom database by adding, editing, and deleting entries. To create this full-stack application, I employed Ruby on Rails and PostgreSQL.

### Preview Image

(Coming soon)

## Deployment Link

(Coming Soon)

## User Stories

* Build a full stack web application. Must be your own work.
* Select a Project Idea of your own.
* Have at least 2 models (more if it makes sense)
  * Authentication is required
* Have full CRUD on at least one of your models 
* Have high quality code:
  * Follow accepted naming conventions
  * Consistent indentation
  * Well-structured and readable code
  * Semantic naming of variables, functions, CSS classes, etc.
  * Short and clear functions that do one thing
  * Efficient code - if you have your MVP, refactor
  * DRY (Don't Repeat Yourself) code
* Use one of these technology stacks. You may choose which tech stack.
  * Full-Stack Rails App
  * Rails API with React Front-End
  * Express API with React Front-End

## Timeframe 

We were given a week to complete this solo assignment.

## Technologies Used

* Ruby 3.2.1

* Rails 7.0.4

* PostgreSQL as the database

* Turbo Rails

* Devise for Authentication

## Planning

* After conceptualizing my idea, I constructed an ERD for the relationships between my models:

![Imgur](https://i.imgur.com/Qk0UwjV.png)

* I built basic wireframes to visualize the app

![Imgur](https://i.imgur.com/dKaNaKL.png)

# Build/Code Process

* Upon starting with Rails, it was evident that I needed two models: one for the user and the other for the mushrooms. To implement the authentication process, I incorporated Devise, enabling users to sign up, log in, log out and delete their account.

(Code snippet of Devise goes here)

This was my first time using Devise for authentication and I have to say that I was pleased with its capabilities.

* I wanted each user to have a set list of mushrooms so I decided to use the 'after_create' callback in Rails so that after a user is created, they find a default set of mushrooms:

![Imgur](https://i.imgur.com/R5cqIva.png)

* Incorporating this feature turned out to be beneficial as it led me to explore the Active Record Callbacks documentation, which offered insights on various callbacks that could be used.
* I used an each method to iterate through each mushroom and display the default mushrooms to each user on the index page.

* From there, each user can find a link to show, edit delete or add a new mushroom:

![Imgur](https://i.imgur.com/l14YLge.png)

* In addition to meeting the specified requirements, I integrated an extra feature that presents a list of tools necessary for users before embarking on a foraging expedition. This page also enables users to navigate to other pages on the site.

(Code snippet tools page)

# Challenges

Apart from my initial experience with Ruby on Rails, I would have preferred to use Bootstrap from the start rather than solely relying on CSS within the given time frame. I had to generate some migrations to modify the existing tables, so I plan to do more planning in advance now that I have a better grasp of Ruby on Rails. Going forward, I intend to use Bootstrap for CSS purposes:

![Imgur](https://i.imgur.com/zLrDNhZ.png)

# Wins

I would say that this week of working with Ruby on Rails has been a valuable learning experience for me. Although I made some mistakes along the way, I now have a clearer understanding of what to avoid in future Rails projects. As a result, I feel more confident in my ability to start and successfully complete future projects.

# Key Learnings & Takeaways

* To begin with, I underestimated exactly how useful Devise was so I'll definitely be using that in the future!
* I will refrain from using pure CSS for styling within the given time constraints and instead opt for a styling framework.
* Despite the challenges I faced, I believe that I have gained a deeper understanding of Ruby on Rails and PostgreSQL overall.

# Future Improvements

* As previously stated, I aim to improve the styling to not only be more organized but also to reflect my personal style.
* I’d also like to improve the structure and organization of the connections between files to optimize performance.







