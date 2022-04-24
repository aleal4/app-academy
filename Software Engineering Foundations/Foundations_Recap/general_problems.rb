def no_dupes?(array)
  count = Hash.new(0)
  array.each do |ele|
    count[ele] += 1
  end
  count.keys.select do |key| 
    count[key] == 1
  end
end

p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
p no_dupes?([true, true, true])          