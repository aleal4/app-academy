# class String
#   def upcase?
#     self.upcase == self
#   end
# end

# p 'hello'.upcase?
# p 'HELLO'.upcase?

# class Integer 
#   def prime? 
#     return fasle if self < 2
      
#     (2...self).each do |i|
#       if self % i == 0
#         return false
#       end
#     end

#     return true
#   end
# end

# p 7.prime?
# p 11.prime?
# p 12.prime?

class Array
  def has_zero?
    self.include?(0)
  end
end

p [4,2,3,0,'hello'].has_zero? 
p [4,2,3,'hello'].has_zero? 