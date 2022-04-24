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

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
p [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
# a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
# [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

# c = [10, 11, 12]
# d = [13, 14, 15]
# [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]