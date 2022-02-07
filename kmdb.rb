# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Movie.destroy_all
Person.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!


##Adding person into the People Table
person = Person.new
person.name = "Christopher Nolan"
person.save

person = Person.new
person.name = "Christian Bale"
person.save

person = Person.new
person.name = "Michael Caine"
person.save

person = Person.new
person.name = "Liam Neeson"
person.save

person = Person.new
person.name = "Katie Holmes"
person.save

person = Person.new
person.name = "Gary Oldman"
person.save

person = Person.new
person.name = "Heath Ledger"
person.save

person = Person.new
person.name = "Aaron Eckhart"
person.save

person = Person.new
person.name = "Maggie Gyllenhaal"
person.save

person = Person.new
person.name = "Tom Hardy"
person.save

person = Person.new
person.name = "Joseph Gordon-Levitt"
person.save

person = Person.new
person.name = "Anne Hathaway"
person.save

# puts "There are #{Person.all.count} person."

##Creating varibale to reference people
christopher_nolan = Person.where({ name: "Christopher Nolan" })[0]

christian_bale = Person.where({ name: "Christian Bale" })[0]

michael_caine = Person.where({ name: "Michael Caine" })[0]

liam_neeson = Person.where({ name: "Liam Neeson" })[0]

katie_holmes = Person.where({ name: "Katie Holmes" })[0]

gary_oldman = Person.where({ name: "Gary Oldman" })[0]

heath_ledger = Person.where({ name: "Heath Ledger" })[0]

aaron_eckhart = Person.where({ name: "Aaron Eckhart" })[0]

maggie_gyllenhaal = Person.where({ name: "Maggie Gyllenhaal" })[0]

tom_hardy = Person.where({ name: "Tom Hardy" })[0]

joseph_gordon_levitt = Person.where({ name: "Joseph Gordon-Levitt" })[0]

anne_hathaway = Person.where({ name: "Anne Hathaway" })[0]

##Adding in movies into the Movie table
batman1 = Movie.new
batman1.title = "Batman Begins"
batman1.year_released = "2005"
batman1.rated = "PG-13"
batman1.person_id  = christopher_nolan.id
batman1.save

batman2 = Movie.new
batman2.title = "The Dark Knight"
batman2.year_released = "2008"
batman2.rated = "PG-13"
batman2.person_id  = christopher_nolan.id
batman2.save

batman3 = Movie.new
batman3.title = "The Dark Knight Rises"
batman3.year_released = "2012"
batman3.rated = "PG-13"
batman3.person_id  = christopher_nolan.id
batman3.save

# puts "There are #{Movie.all.count} movies."

##creating variables to reference movie IDs
batman_begins = Movie.where({ title: "Batman Begins" })[0]

dark_knight = Movie.where({ title: "The Dark Knight" })[0]

dark_knight_rises = Movie.where({ title: "The Dark Knight Rises" })[0]

##Adding role into the Roles Table
role = Role.new
role.movie_id = batman_begins.id
role.person_id = christian_bale.id
role.character_name = "Bruce Wayne"
role.save

role = Role.new
role.movie_id = batman_begins.id
role.person_id = michael_caine.id
role.character_name = "Alfred"
role.save

role = Role.new
role.movie_id = batman_begins.id
role.person_id = liam_neeson.id
role.character_name = "Ra's Al Ghul"
role.save

role = Role.new
role.movie_id = batman_begins.id
role.person_id = katie_holmes.id
role.character_name = "Rachel Dawes"
role.save

role = Role.new
role.movie_id = batman_begins.id
role.person_id = gary_oldman.id
role.character_name = "Commissioner Gordon"
role.save

role = Role.new
role.movie_id = dark_knight.id
role.person_id = christian_bale.id
role.character_name = "Bruce Wayne"
role.save

role = Role.new
role.movie_id = dark_knight.id
role.person_id = heath_ledger.id
role.character_name = "Joker"
role.save

role = Role.new
role.movie_id = dark_knight.id
role.person_id = aaron_eckhart.id
role.character_name = "Harvey Dent"
role.save

role = Role.new
role.movie_id = dark_knight.id
role.person_id = michael_caine.id
role.character_name = "Alfred"
role.save

role = Role.new
role.movie_id = dark_knight.id
role.person_id = maggie_gyllenhaal.id
role.character_name = "Rachel Dawes"
role.save

role = Role.new
role.movie_id = dark_knight_rises.id
role.person_id = christian_bale.id
role.character_name = "Bruce Wayne"
role.save

role = Role.new
role.movie_id = dark_knight_rises.id
role.person_id = gary_oldman.id
role.character_name = "Commissioner Gordon"
role.save

role = Role.new
role.movie_id = dark_knight_rises.id
role.person_id = tom_hardy.id
role.character_name = "Bane"
role.save

role = Role.new
role.movie_id = dark_knight_rises.id
role.person_id = joseph_gordon_levitt.id
role.character_name = "John Blake"
role.save

role = Role.new
role.movie_id = dark_knight_rises.id
role.person_id = anne_hathaway.id
role.character_name = "Selina Kyle"
role.save

##creating loops

movies = Movie.all

#for movie in movies
#"#{movie.title} #{movie.year_released} #{movie.rated}"
#end

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

#person = Person.where({ id: movie.person_id })[0]

for movie in movies
  puts "#{movie.title} #{movie.year_released} #{movie.rated} #{christopher_nolan.name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

# christian_bale = Person.where({ name:"Christian Bale"})[0]
# puts christian_bale.id

# roles = christian_bale.roles

# p "Roles with CB: #{roles.count}"
# for role in roles
#     p "#{role.character_name}"
# end



movies = Movie.all
people = Person.all
roles = Role.all


person = Person.where({ id: role.person_id })[0]
movie = Movie.where({ id: role.movie_id })[0]


for movie in movies
  roles_in_movie = Role.where({movie_id: movie.id})
  for role in roles_in_movie
    actor = Person.where({id: role.person_id})[0]
    puts "#{movie.title} #{actor.name} #{role.character_name}"
  end
end




