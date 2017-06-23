# Friday Afteroon Extra Fun Times

def encrypt(string1)
  count = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while count < string1.length
    if string1[count] == " "
      string1[count] = " "
      count += 1
    else
      original = alphabet.index(string1[count])
      converted = original + 1
      encrypted_letter = alphabet[converted]
      string1[count] = encrypted_letter
      count += 1
    end
  end
return string1
end

def decrypt(string2)
  count = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while count < string2.length
    if string2[count] == " "
      string2[count] = " "
      count += 1
    else
      original_index = alphabet.index(string2[count])
      converted_index = original_index - 1
      decrypted_letter = alphabet[converted_index]
      string2[count] = decrypted_letter
      count += 1
    end
  end
return string2
end

# puts decrypt(encrypt("swordfish"))
# This works beacause the program is first running it through encrypt (because PEMDAS), which returns all indexes down one, and then running it through decrypt, which then returns them all to their original positions, returning the original input.

# Testing calls for above functions:

# puts encrypt("swordfish") -- should return "txpsegjti"
# puts decrypt("txpsegjti") -- should return "swordfish"
# puts decrypt(encrypt("swordfish")) -- should return "swordfish"


puts "Would you like to encrypt or decrypt your password?"
answer = gets.chomp
puts "What is your password?"
password = gets.chomp

  if answer == "encrypt"
    encrypt(password)
    p password
  elsif answer == "decrypt"
    decrypt(password)
    p password
  end

# Use 'puts' to ask user if they would like to encrypt or decrypt their password. Then ask them for the password, store password as string1 or string 2, depending on whether or not they want to encrypt or decrypt their password. Loop through the method of choice and print the encrypted/decrypted password.