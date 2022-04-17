# class String
#   def upcase?
#     self.upcase == self
#   end
# end

# p 'hello'.upcase?
# p 'HELLO'.upcase?

class Integer 
  def prime? 
    return fasle if self < 2
      
    (2...self).each do |i|
      if self % i == 0
        return false
      end
    end

    return true
  end
end

p 7.prime?
p 11.prime?
p 12.prime?