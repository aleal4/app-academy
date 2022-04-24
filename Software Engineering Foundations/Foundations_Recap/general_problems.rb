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

p longest_streak('a')           # => 'a'
p longest_streak('abc')         # => 'c'
p longest_streak('accccbbb')    # => 'cccc'
p longest_streak('aaaxyyyyyzz') # => 'yyyyy
p longest_streak('aaabbb')      # => 'bbb'