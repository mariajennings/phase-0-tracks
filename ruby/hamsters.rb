puts "What is this hamsters name?"
name = gets.chomp
puts "What is this hamsters volume level?"
volume = gets.to_i
puts "What color is this hamster?"
color = gets.chomp
puts "Is this hamster a good candidate for adoption?"
candidate = gets.chomp
puts "How old is this hamster, anyway?"
age = gets.chomp
  if age.empty?
    age = nil
  else
    age.to_i
  end
puts "This little hamster's name is #{name}, who has a volume level of #{volume}. As you can see, this hamster is #{color}. Would #{name} be a good candidate for adoption? We think #{candidate}! And #{name} is only #{age} years old."