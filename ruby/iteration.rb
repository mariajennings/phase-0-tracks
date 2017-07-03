#An array of possible weather conditions.
weather = ["snow", "rain", "sleet", "fog", "hurricane"]
#pre-modifying data structure:
p weather

weather.each do |element|
  p "#{element} is my favorite weather!"
end

weather.map! { |element| element.capitalize}
#post-modifying data structure:
p weather

#A hash that repersentes a Hollywood actress and her highest grossing film at the box office. Data provided by Box Office Mojo.

actresses_movies = {
  "Scarlett Johansson": "The Avengers",
  "Emma Watson": "Beauty and the Beast",
  "Cameron Diaz": "Shrek 2",
  "Julia Roberts": "Ocean's Eleven",
}
p actresses_movies

actresses_movies.each do |actor, film|
  p "#{actor} is one of my favorite actresses, but I've never seen #{film}!"
end

p actresses_movies
#no modifications made, because we cannot call .map! on a hash.

#RELEASE 2

#Use the documentation to find other Array and Hash methods that take blocks, and that can accomplish the tasks below, then add sample calls for the array, and one for the hash.

#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
array_one = [1, 2, 3, 4, 5, 6, 7, 8, 9]
array_one.delete_if {|number| number < 5}
hash_one = {
  hannah: 50,
  john: 10,
  lauren: 100,
  lily: 20,
}
hash_one.delete_if {|student, score| score < 50}

#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
array_two = ["bananas", "peaches", "kiwi", "apples", "oranges"]
array_two.keep_if { |fruit| fruit.length > 6 }
hash_two = {
  ryan: 70,
  nick: 90,
  cameron: 11,
  kevin: 100,
}
hash_two.keep_if {|person, age| age > 15}

# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
array_three = ["dogs", "cats", "fish", "cows", "bears"]
array_three.select {|animal| animal.start_with?"c"}
hash_three = {
  harry: "gryffindor",
  luna: "ravenclaw",
  draco: "slytherin",
  neville: "gryffindor",
  cho: "ravenclaw",
}
hash_three.select {|student, house| house == "gryffindor"}

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
array_four = [0, 1, 2, 3, 4, 5, 6]
array_four.take_while {|number| number < 3}
hash_four = {
  comedy: "Shrek",
  superhero: "The Avengers",
  fantasy: "Beauty and the Beast",
  action: "Ocean's Eleven",
}
hash_four.drop_while {|genre, title| genre == :fantasy}