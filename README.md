# WorkItOut

###### An app for fitness enthusiasts who want customized workouts created by a personal coach.

-----

### Table of Contents
- [Functionality](#functionality)
- [Getting Started](#getting-started)
- [ERD](#erd)
- [Next Steps](#next-steps)
- [Collaborators](#collaborators)

### Functionality
When logged in as a WorkItOuter (client), users can view their custom workouts, see all exercises, exercise categories, and all of the other clients’ and coaches’ profile pages. Clients can also mark their workouts as complete and remove them when they no longer want that workout. When a user is logged in on the coach side of the website, they can create workouts for their clients and customize the workouts by adding and deleting exercises. Coaches can also add categories of expertise to their own profile to show which workout areas they are most experienced with. Exercises and Categories can be created or edited by a coach.

### Getting Started
1. Fork and clone this repo on to your local machine
2. Run `bundle install` in the terminal to ensure all necessary gems are installed
3. In the terminal run `rails db:seed` to seed the database 
4. Next run `rails s` to start up a server listening on localhost:3000

### ERD
![WorkItOut Model Relationships](https://github.com/LaurenGifford/WorkItOut/blob/master/WorkItOut_ERD.png)

### Next Steps
In more complete versions of this app, users will be able to export a PDF of their associated workouts with individual exercise instructions.
Users will also be able to search and filter exercises by various attributes and by different aggregate data metrics.
Feedback and contributions are welcomed.

### Collaborators
This project was created as Josh Frank and Lauren Gifford's Mod 2 Project at the Flatiron School.