# The Forager's Guide To Mushrooms

## Description

I opted to develop an application called "The Forager's Guide to Mushrooms," which helps users prepare for their mushroom foraging expeditions. The app enables users to manage their own personalized mushroom database by adding, editing, and deleting entries. To create this full-stack application, I employed Ruby on Rails and PostgreSQL.

### Preview Image

![Imgur](https://i.imgur.com/rRNuR93.png)

## Deployment Link

 * [Forager's Guide To Mushrooms](https://foragers-guide-to-mushrooms.herokuapp.com/)

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

```ruby on rails
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :mushrooms, dependent: :destroy

  validates :email, presence: true
  validates :email, uniqueness: true
```

This was my first time using Devise for authentication and I have to say that I was pleased with its capabilities.

* I wanted each user to have a set list of mushrooms so I decided to use the 'after_create' callback in Rails so that after a user is created, they find a default set of mushrooms:

```ruby on rails
  after_create :add_default_mushrooms_to_new_user

    def self.add_default_mushrooms_to_all_users
      User.find_each do |user|
        user.mushrooms.create(name: "Oyster", body: "Also known as Pleurotus ostreatus, the oyster  is highly nutritious. Oyster mushrooms may promote heart and immune system health, encourage healthy blood sugar control, and provide antioxidant and anti-inflammatory effects", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/b2/5c/a0/b25ca021a20222e0f70d66af3a1a59b2.jpg")
        user.mushrooms.create(name: "Mica Cap", body: "Also known as Coprinellus Micaceus, the Mica cap contains bioactive compounds that have the potential to be used as adjuvants in cancer chemotherapy", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/60/c1/cb/60c1cbfdc8736f31638bbbc356570206.jpg")
        user.mushrooms.create(name: "Scarlet Elf Cup", body: "Also known as Sarcoscypha Coccinea, the Scarlet Elf Cup is a hard to find mushroom with a terrible taste. Though it is not poisonous, it is not recommended for consumption", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/69/a7/e2/69a7e2d5332ec68201b5b2535303c0d6.jpg")
        user.mushrooms.create(name: "Basket Stinkhorn", body: "Also known as Clathrus ruber, the stinkhorn mushroom is not poisonous until it starts to smell like rotting meat. Stinkhorn is edible, but only at the egg stage when the smell is less strong. ", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/09/1e/16/091e16662da815e525344a5ecfe4d338.jpg")
        user.mushrooms.create(name: "Blackening Brittlegill", body: "Also known as Russula Nigricans, the Blackening Brittlegill is found all over Europe from Scandinavia to the Mediterranean. The sometimes finely felty but often smooth cap peels to about 75%.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/65/78/ba/6578baeb4255f59aba1bd43b1877d0a6.jpg")
        user.mushrooms.create(name: "Plums and Custard", body: "Also known as Tricholomopsis Rutilans, the Plums and Custard mushroom is found growing on rotting stumps and trunks. It can grow in large numbers is not typically considered edible.", psychedelic: false, deadly: true, img: "https://i.pinimg.com/564x/9b/3b/79/9b3b798a358143a238c7d8b4481785d7.jpg")
        user.mushrooms.create(name: "The Sickener", body: "Also known as Russula Emetica, the Sickener causes most people who ingest it to vomit. Do your best not to eat this one", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/ec/30/61/ec3061fa16cc9352ff0aa44cd06c5107.jpg")
        user.mushrooms.create(name: "Artist's Conk", body: "Also known as Ganoderma Applanatum, the Artist's Conk is a wood fungus. In Chinese medicine this fungus has been used to treat rheumatic tuberculosis and esophageal carcinoma.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/97/63/61/976361c66afc589b5e016e4330eb75c6.jpg")
        user.mushrooms.create(name: "Golden Coral", body: "Also known as Ramaria aurea, the Golden Coral is not general considered a mushroom to be picked as it can easily be mistaken for its poisonous lookalikes.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/11/aa/58/11aa5881504e8c0bb464cb25efa12088.jpg")
        user.mushrooms.create(name: "Death Cap", body: "Also known as Amanita phalloides, the Death cap is one of the mushrooms that cause the most deaths worldwide. The caps tend to be pale green or sometimes pale yellow or brown. ", psychedelic: false, deadly: true, img: "https://i.pinimg.com/564x/77/b6/4a/77b64ae486c59dc484b2a0191666261e.jpg")
        user.mushrooms.create(name: "Enoki", body: "Also known as Flammulina Filiformis, the Enoki is highly nutritious and can support heart, brain and immunity health.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/17/4f/87/174f87bef026a8f73205a8c0e9042fdc.jpg")
        user.mushrooms.create(name: "Shaggy Mane", body: "Also known as Coprinellus Micaceus, the Shaggy Mane is a very poisonous mushroom that is often confused for an edible lookalike. Dont eat it!", psychedelic: false, deadly: true, img: "https://i.pinimg.com/564x/09/c2/62/09c262daec9c565d4b08b3633f3d5503.jpg")
        user.mushrooms.create(name: "Brittlestem", body: "Also known as Psathyrella candolleana, the Brittlestem is a psilocybin mushroom found growing during spring and summer.", psychedelic: true, deadly: false, img: "https://i.pinimg.com/564x/b5/3a/6a/b53a6a821afaf76279672be4dd4714db.jpg")
        user.mushrooms.create(name: "Deadly Fibre Cap", body: "Also known as Inocybe erubescens, the Deadly Fibre Cap is one of the deadliest known mushrooms. Its cap is conical and can have white gills when young so dont confuse it for a St Georges mushroom.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/d4/24/85/d424851ae94c85aecc8873603fda61c0.jpg")
      end
    end

    def default_mushrooms
      mushrooms.where(is_default: true)
    end
```

* Incorporating this feature turned out to be beneficial as it led me to explore the Active Record Callbacks documentation, which offered insights on various callbacks that could be used.
* I used an each method to iterate through each mushroom and display the default mushrooms to each user on the index page.

* From there, each user can find a link to show, edit delete or add a new mushroom:

```ruby on rails
<p style="color: green"><%= notice %></p>

<div class="shrooms">
  <h1 id="urmushies" class="letter-spacing">Your Mushrooms</h1>

  <div class="mushrooms">
    <ul class="mushroom-grid">
      <% current_user.default_mushrooms.each do |mushroom| %>
        <li class="mushie">
        <span class="mushname letter-spacing"><%= mushroom.name %></span>
          <% if mushroom.img %>
          <span class="shroomm"><%= image_tag(mushroom.img) %></span>
          <% else %>
          <%= image_tag "DrawnMushie.jpg", width: "100" %>
          <% end %>

          <%= link_to "Show", mushroom_path(mushroom) %>
          <%= link_to "Edit", edit_mushroom_path(mushroom) %>
          <%= button_to "Delete", mushroom, method: :delete %>
        </li>
      <% end %>
    </ul>
  </div>
  <%= link_to "Add new mushroom", new_mushroom_path %>
</div>
```

* In addition to meeting the specified requirements, I integrated an extra feature that presents a list of tools necessary for users before embarking on a foraging expedition. This page also enables users to navigate to other pages on the site.

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







