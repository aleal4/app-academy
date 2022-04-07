# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  count = Hash.new(0)
  string.each_char { |char| count[char] += 1 }
  
  frequent = []
  count.each do |key, value| 
    if value > 2
      frequent << key
    end
  end
  return frequent
  
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts 