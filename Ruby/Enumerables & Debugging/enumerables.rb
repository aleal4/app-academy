require 'byebug'

class Array 
  def my_each(&prc)
    self.length.times do |i|
      prc.call(self[i])
    end

    self
  end

  def my_select(&prc)
    selected = []

    self.my_each do |i|
      selected << i if prc.call(i) == true
    end

    selected
  end

  def my_reject(&prc)
    selected = []

    self.my_each do |ele|
      selected << ele unless prc.call(ele)
    end

    selected
  end

  def my_any?(&prc)
    self.my_each do |ele|
      return true if prc.call(ele) 
    end
    false
  end

  def my_all?(&prc)
    self.my_each do |ele|
      return false unless prc.call(ele)
    end
    true
  end

  def my_flatten
    flattened = []

    self.my_each do |ele|
      if ele.is_a?(Array)
        flattened.concat(ele.my_flatten)
      else
        flattened << ele
      end
    end
    flattened
  end

  def my_zip(*arrays)
    zipped = []
    
    debugger
    self.length.times do |i|
      sub_zip = [self[i]]

      arrays.each do |array|
        sub_zip << array[i]
      end

      zipped << sub_zip
    end

    zipped  
  end

  def my_rotate(position = 1)
    
    # split_idx = position % self.length

    rotated = self.dup

    if position < 0
      position.abs.times do 
        rotated.unshift(rotated.pop)
      end
    else
      position.times do 
        rotated.push(rotated.shift)
      end
    end

    rotated
  end

  def my_join(separator = '')
    join = ''

    self.length.times do  |i|
      join += self[i]
      join += separator unless i == self.length - 1
    end
    join
  end

  def my_reverse
    reversed = []

    self.my_each do |ele|
      reversed.unshift(ele)
    end
    reversed
  end
end









# puts "My Each"
# # My Each
# # calls my_each twice on the array, printing all the numbers twice.
# return_value = [1, 2, 3].my_each do |num|
#   puts num
# end.my_each do |num|
#   puts num
# end

# a = [1, 2, 3]
# p a.my_select { |num| num > 1 } # => [2, 3]
# p a.my_select { |num| num == 4 } # => []

# a = [1, 2, 3]
# p a.my_reject { |num| num > 1 } # => [1]
# p a.my_reject { |num| num == 4 } # => [1, 2, 3]

# a = [1, 2, 3]
# p a.my_any? { |num| num > 1 } # => true
# p a.my_any? { |num| num == 4 } # => false
# p a.my_all? { |num| num > 1 } # => false
# p a.my_all? { |num| num < 4 } # => true

# p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]

# a = [ 4, 5, 6 ]
# b = [ 7, 8, 9 ]
# p [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
#    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]

# a = [ "a", "b", "c", "d" ]
# p a.my_rotate         #=> ["b", "c", "d", "a"]
# p a.my_rotate(2)      #=> ["c", "d", "a", "b"]
# p a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
# p a.my_rotate(15)     #=> ["d", "a", "b", "c"] \

# a = [ "a", "b", "c", "d" ]
# p a.my_join         # => "abcd"
# p a.my_join("$")    # => "a$b$c$d"

# p [ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
# p [ 1 ].my_reverse      