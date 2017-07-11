class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

# Add a speak method that takes an integer, and then prints "Woof!" that many times.
  def speak(integer)
    integer.times do
      print "Woof! "
    end
  end

# Add a roll_over method that just prints "*rolls over*".
  def roll_over
    puts "*rolls over*"
  end

# Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
  def dog_years(human_age)
    dog_years = human_age * 7
    p dog_years
  end

# Add one more trick -- whichever one you'd like.
  def good_boy
    puts "Are you a good boy?! (Yes/No)"
    input = gets.chomp
    if input == "Yes"
      puts "Yes you are! Here's a treat!"
    else
      puts "That's right, you're a *great* boy!! Have a treat!!"
    end
  end

# Add a method to your Puppy class named initialize. It runs whenever a new instance of the class is created. It doesn't work unless spelled correctly!
  def initialize
    print "initializing new puppy instance..."
  end

end

rex = Puppy.new
rex.fetch('tennis ball')
rex.speak(4)
rex.roll_over
rex.dog_years(5)
rex.good_boy

class Unicorn
  def initialize
    print "Discovering new unicorn instance..."
  end

  def heal(injury)
    print "I have healed your #{injury} with my magical unicorn horn!"
  end

  def neigh
    print "Neigh! Neigh!"
  end
end
#driver code for instances:
agatha = Unicorn.new
agatha.heal('sprained ankle')
agatha.neigh

# Use a loop to make 50 instances of your class, put it in a data structure.
unicorn_array = [ ]
50.times do
  unicorn_array << Unicorn.new
end

# Iterate over that data structure using .each and call the instance methods you wrote on each instance.
unicorn_array.each do |unicorn|
  unicorn.heal('minor injury')
  unicorn.neigh
end
