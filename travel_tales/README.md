# Travel Tales
A ruby application to write blogs about locations a user has been to by logging the places into a database. The user will post it and other users may comment.

## Installation
1. Open your terminal
2. Clone the repository: `$ git@github.com:kristinmaripasive/travel-tales.git`
3. Go inside the directory: `$ cd travel_tales`
4. Install gems needed: `$ bundle install`
5. Load server: `$ rails s`
6. Open page on browser: `http://localhost:3000`

## Contributing
1. Fork it!
2. Create your feature branch: `$ git checkout -b my-new-feature`
3. Commit your changes: `$ git commit -m 'Add some feature'`
4. Push to the branch: `$ git push origin my-new-feature`
5. Submit a pull request :D

## History
Since I have been to uncountable places around the world, I have grown to love to travel. I wanted to create an application where I could save the locations I have been to and blog about them. I wanted other people to comment as well and build a community of interactive travel bloggers.

## Planning
I started with sketching some wireframes for my app idea. I had a visual in my mind of how the website would physically look like and how the users would be able to navigate through the web app conveniently.

I came up with the following user stories:

# As a user I would want to view an index page when I visit the web page
# As a user I would want to sign up/register for an account
# As a user I would want to access the application by signing in to my account
# As a user I would want to have my user profile page
# As a user I would want to be able to edit my user profile page
# As a user I would want to view my locations
# As a user I would want to sign out of my account
# As a user I would want to add locations to my locations
# As a user I would want to access all locations by all users
# As a user I would want to access a single location
# As a user I would want to add a thought/post to my selected location
# As a user I would want to edit the post
# As a user I would want to delete the post along with the dependent comments
# As a user I would want to be able to add a comment to a post
# As a user I would want to be able to delete a comment to a post

## Process
I had a few roadblocks every now and then. I would say fixing undefined methods would have been my major issue throughout. I often got confused on which file I should redirect to and which objects to pass when needed. So, that took most of my time.

Nesting routes inside another nested route was something new I had to learn. I got stuck on how to apply that for quite a while. I wanted my comments to be dependent on a thought, and a thought to be dependent on a location. I had to nest my `comments` inside my `thoughts` which was inside my `location`.

Another very complex thing I had to tackle was creating my joined table. It was fairly easy but figuring out how to print what I wanted on the web page that was in that table was a challenge.

Next time I would create a project like this, I would use a gem to create users since that took a lot of my time to create.

Overall, I feel like I enjoyed the process but I would have preferred to have more time to thoroughly think about user experience as well.

## Features to build in future
- I would like to integrate a google maps API so the locations I track would be seen visually on the map.

- Add a delete feature to `My Locations`

- Have user names show up whenever a post or comment is created

## Specs
* Ruby version: ruby 2.3.1p112 (2016-04-26 revision 54768)

* Technologies used: Atom text editor, Ruby on Rails, HTML, CSS

* Database creation: `$ rails new travel_tales -d postgresql` (running on Postgresql)
