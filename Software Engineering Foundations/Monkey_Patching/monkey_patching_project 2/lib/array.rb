# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.length == 0
    return self.max - self.min
  end

  def average
    return nil if self.empty?
    return self.sum / (self.length * 1.0)
  end

  def median

  end
end
