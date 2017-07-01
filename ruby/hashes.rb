# Write a program that will allow an interior designer to gather information from a client, including name, age, number of children, etc.

puts "INTERIOR DESIGNER CLIENT MANAGEMENT FORM"

# allow client to enter relevant details and convert to appropraite data type

puts "What is your name?"
name = gets.chomp
puts "What is your age?"
age = gets.to_i
puts "Do you have children?"
children = gets.chomp
puts "What is your budget?"
budget = gets.to_i
puts "Any allergies?"
allergies = gets.chomp
puts "What is your preferred decor style?"
decor_style = gets.chomp

# store relevant information in a hash: use symbols as keys for readability:

client_form = {
  client_name: name,
  client_age: age,
  client_children: children,
  client_budget: budget,
  client_allergies: allergies,
  client_decor: decor_style,
}

#print form

p client_form

#ask client if they need to edit any information; if not, they can type 'none' to finish.

puts "Do you need to edit any information? If everything is accurate, type 'none'."

answer = gets.chomp.downcase

if answer == "none"
  puts "Thank you! We can't wait to create the #{decor_style} home of your dreams!"
else
  #if the user types in a key value
  new_value = gets.chomp
  client_form[answer.to_sym] = new_value
  puts "Thank you, your changes have been saved! We can't wait to create the home of your dreams!"
  p client_form

end