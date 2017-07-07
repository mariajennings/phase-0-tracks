
def change_vowel(letter)
  #edge case:
  if letter == "u"
    code_letter = "a"
  else
    alphabet = "aeiou"
    current_letter = alphabet.index(letter)
    code_letter = alphabet[current_letter + 1]
  end
  code_letter
end

def change_consonant(letter)
  #edge case:
  if letter == "z"
    code_letter = "b"
  else
    alphabet = "bcdfghjklmnpqrstvwxyz"
    current_letter = alphabet.index(letter)
    code_letter = alphabet[current_letter + 1]
  end
  code_letter
end

def alias_manager(name)
  #swap first and last name
  new_alias = name.split(' ')
  new_alias.reverse!
  alias_string = new_alias.join('')
  new_alias = alias_string.split('')

  final_alias = ""
  #loop through the string
  new_alias.each do |letter|
    if ("aeiou".include? letter)
      encrypt_letter = change_vowel(letter)
      final_alias += encrypt_letter

    elsif ("bcdfghjklmnpqrstvwxyz".include? letter)
    #change consonant to next consonant
      encrypt_letter = change_consonant(letter)
      final_alias += encrypt_letter
    #else keep it (in case it's a space or dash or whatever)
    end
  end
  final_alias
end

# Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'.

#create a blank hash to store names entered:
real_names = {}
user_input = ""
  until user_input == "quit"
    puts "Enter a real name and get a spy name! Or type quit to exit the program."
    user_input = gets.chomp
    if user_input != "quit"
      p user_input
      real_names[user_input] = alias_manager(user_input)
      alias_manager(user_input)
    end
  end
# Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered.

  real_names.each do |true_identity, alias_identity|
    puts "You may know the civilian #{true_identity}, but have you met #{alias_identity}, the spy?!"
  end

