# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length == 0
      return nil 
    end
    return self.max - self.min
  end

  def average
    return nil if array.empty?

    return (self.sum / (self.length * 1.0))
  end

  # def median
  #   return nil if array.empty?

  #   sorted = array.sort
  #   len = sorted.length
  #   (sorted[])
  # end

  def counts 
    
  end
end
