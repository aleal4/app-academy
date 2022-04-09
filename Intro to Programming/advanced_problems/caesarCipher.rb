# Write a method caesar_cipher that takes in a string and a number. The method should return a new string where every character of the original is shifted num characters in the alphabet.

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)

  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_str = ""

  str.each_char do |char|
    old_indx = alphabet.index(char)
    new_indx = old_indx + num
    new_char = alphabet[new_indx % 26] #should it go beyond alphabet and need to circle back
    new_str += new_char
  end


end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"