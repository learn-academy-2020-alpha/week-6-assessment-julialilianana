# ASSESSMENT 6: Interview Practice Questions
Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn.

1. In a model called Animal that has_many Sightings, what is the name of the foreign key? Would the foreign key be part of the Animal model or the Sightings model?

  Your answer: animal_id:integer. the animal id would be stored in the sightings model to keep track of what animal is being sighted in each sighting.

  Researched answer: the name of the foreign key would be animal_id:integer. the key would have a column in the sightings model.



2. Which routes must always be passed params and why?

  Your answer: 
  -show     -shows a single row
  -delete   -deletes a single row
  -put      -updates a single row


  Researched answer:
  -show     -shows a single row
  -delete   -deletes a single row
  -put      -updates a single row


3. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess".

  Your answer: /game/guess




4. Name three rails generator commands. What is created by each?

  Your answer: 
  - rails g model                 -this create a new model
  - rails g migration             -this creates a new migration
  - rails g controller            -this creates a new controller

  Researched answer:
  - rails g -h                    -this shows you information about commands that are allwed and syntax.
  - rails g resource              -this does the same as g model, but also creates routes and views.
  - rails g rails generate rspec:model  - this creates a new rspec model


5. Consider the Rails routes below. Describe the responsibility of each route.

/users        method="GET"   -this will show all users

/users/1      method="GET"   -this will show the user with an id 1

/users/new    method="GET"   -this will show a page that allows new users to be made

/users/       method="POST"  -this will add a new user 

/users/1      method="PUT"    -this will update the user with id 1

/users/1      method="DELETE" -this will delete the user with id 1
