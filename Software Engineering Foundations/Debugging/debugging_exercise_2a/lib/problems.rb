# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require 'byebug'

def prime?(number)
  return false if number < 2
  (2...number).none? {|i| number % i == 0}
end

def largest_prime_factor(number)
  # debugger
  number.downto(2) do |factor|
    if number % factor == 0 && prime?(factor)
      return factor
    end
  end
end

def unique_chars?(string)
  already_seen = []

  string.each_char do |char|
    if already_seen.include?(char)
      return false
    end
    already_seen << char
  end
  true
end

def dupe_indices(array)
  indices = Hash.new {|hash,key| hash[key] = []}
  array.each_with_index do |ele, idx|
    indices[ele] << idx
  end

  indices.select { |key, arr| arr.length > 1 }

end

def ana_array(arr_1, arr_2)
  count_1 = ele_counter(arr_1)
  count_2 = ele_counter(arr_2)
  count_1 == count_2
end

def ele_counter(arr)
  count = Hash.new(0)
  arr.each {|ele| count[ele] += 1 }
  count
end