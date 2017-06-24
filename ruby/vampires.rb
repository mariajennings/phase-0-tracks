def vampire_test
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.to_i
  puts "What year were you born?"
  year = gets.to_i
  puts "Would you like some garlic bread?"
  garlic_preference = gets.chomp
  puts "Would you like to enroll in our health insurance?"
  insurance_preference = gets.chomp


  # If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
  # If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
  # If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
  #Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”

  calculated_age = 2017 - year
  vampire_status = "Results are inconclusive."
  if age == calculated_age && (garlic_preference == "yes" || insurance_preference == "yes")
    vampire_status = "Probably not a vampire."
  end

  if age != calculated_age && (garlic_preference == "no" || insurance_preference == "no")
    vampire_status = "Probably a vampire."
  end

  if age != calculated_age && garlic_preference == "no" && insurance_preference == "no"
    vampire_status = "Almost certainly a vampire."
  end

  if name == "Drake Cula" || name == "Tu Fang"
    vampire_status = "Definitely a vampire."
  end

allergies = " "
  until allergies == "done" || allergies == "sunshine"
    puts "What are you allergic to?"
  allergies = gets.chomp
    end
  if allergies == "sunshine"
    vampire_status ="Probably a vampire."
    end
puts vampire_status

end

puts "How many employees will be processed?"
employee_number = gets.to_i
i = 0
until i == employee_number
  vampire_test
  i += 1
end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."