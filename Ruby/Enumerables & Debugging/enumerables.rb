# require 'byebug'

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

a = [1, 2, 3]
p a.my_any? { |num| num > 1 } # => true
p a.my_any? { |num| num == 4 } # => false
p a.my_all? { |num| num > 1 } # => false
p a.my_all? { |num| num < 4 } # => true