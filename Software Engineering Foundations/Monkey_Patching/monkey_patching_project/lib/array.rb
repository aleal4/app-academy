# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length == 0
      return nil 
    end
    return self.max - self.min
  end

  def average
    if self.length == 0
      return nil
    end

    return (self.sum / (self.length * 1.0))
  end

  def median
    if self.length == 0
      return nil  
    end

    if self.length.odd?
  end
end
