def no_dupes?(array)
  count = Hash.new(0)
  arr ay.each do |ele|
    count[ele] += 1
  end
  count.keys.select do |key| 
    count[key] == 1
  end
end

# p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# p no_dupes?([true, true, true])          

def no_consecutive_repeats?(arr)
  (0...arr.length - 1).each do |i|
    return false if arr[i] == arr[i + 1]
  end
  true
end

# p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# p no_consecutive_repeats?(['x'])                              # => true

def char_indices(str)
  indices = Hash.new{ |h, k| h[k] = []}
  str.each_char.with_index do |char, i|
    indices[char] << i
  end
  indices
end

# p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}

def longest_streak(str)
  current_str = ''
  best_str = ''

  (0...str.length).each do |idx|
    if str[idx] == str[idx + 1] || idx == 0
      current_str += str[idx]
    else
      current_str = str[idx]
    end
  
  best_str = current_str if current_str.length >= best_str.length
  end
  best_str

end

# p longest_streak('a')           # => 'a'
# p longest_streak('abc')         # => 'c'
# p longest_streak('accccbbb')    # => 'cccc'
# p longest_streak('aaaxyyyyyzz') # => 'yyyyy
# p longest_streak('aaabbb')      # => 'bbb'

def bi_prime?(num)
  prime_facts = prime_factors(num)

  prime_facts.any? do |a|
    b = num / a * 1.0
    prime_facts.include?(b)
  end
end

def prime?(num)
  return false if num < 2
  (2...num).none? {|i| num % i == 0}
end

def prime_factors(num)
  (2..num).select {|i| num % i == 0 && prime?(i)}
end


# p bi_prime?(94)   # => true
# p bi_prime?(14)   # => true
# p bi_prime?(22)   # => true
# p bi_prime?(25)   # => true
# p bi_prime?(24)   # => false
# p bi_prime?(64)   # => false

def vigenere_cipher(message, keys)
  alpha = ('a'..'z').to_a
  new_message = ''

  message.each_char.with_index do |char, idx|
    pos = alpha.index(char)
    key = keys[idx % keys.length]
    new_pos = (pos + key) % alpha.length
    new_message += alpha[new_pos]
  end

  new_message
end

# p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
# p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
# p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
# p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
# p vigenere_cipher("yawn", [5, 1])     


def vowel_rotate(str)
  # create a copy of the string via reference
  new_str = str[0..-1]
  vowels = 'aeiou'
  # get the indicies of the vowels
  vowel_indices = (0...str.length).select { |i| vowels.include?(str[i]) }
  # rotate the vowels into a new array
  rotated_vowel_indicies = vowel_indices.rotate(-1)

  # vowel_idx refers to the position of vowel within original string. i refers to actual index within the vowel indicies
  vowel_indices.each_with_index do |vowel_idx, i|
    # grab new vowel based on rotated_vowel-idicies location
    new_str[vowel_idx] = str[rotated_vowel_indicies[i]]

  end

  new_str
end

# p vowel_rotate('computer')      # => "cempotur"
# p vowel_rotate('oranges')       # => "erongas"
# p vowel_rotate('headphones')    # => "heedphanos"
# p vowel_rotate('bootcamp')      # => "baotcomp"
# p vowel_rotate('awesome')   

class String 
  def select(&prc)
    return '' if prc.nil?
    new_str = ''
    self.each_char do |char|
      if prc.call(char)
        new_str += char
      end
    end

    new_str
  end

end

# p "app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
# p "HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
# p "HELLOworld".select          # => ""

class String
  def map!(&prc)
    self.each_char.with_index do |char, i|
       self[i] = prc.call(char, i)
    end
  end
end

# word_1 = "Lovelace"
# word_1.map! do |ch| 
#     if ch == 'e'
#         '3'
#     elsif ch == 'a'
#         '4'
#     else
#         ch
#     end
# end
# p word_1        # => "Lov3l4c3"

# word_2 = "Dijkstra"
# word_2.map! do |ch, i|
#     if i.even?
#         ch.upcase
#     else
#       ch.downcase
#     end
#   end
#   p word_2        # => "DiJkStRa"

def multiply(a, b)
  return 0 if b == 0

  if b < 0
    -(a + multiply(a, (-b) - 1))
  else
    a + multiply(a, b - 1)
  end
end

p multiply(3, 5)        # => 15
p multiply(5, 3)        # => 15
p multiply(2, 4)        # => 8
p multiply(0, 10)       # => 0
p multiply(-3, -6)      # => 18
p multiply(3, -6)       # => -18
p multiply(-3, 6) 