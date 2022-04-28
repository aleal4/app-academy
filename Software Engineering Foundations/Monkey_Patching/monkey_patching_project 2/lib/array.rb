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
    return nil if self.empty?

    if self.length.odd?
      middle = self.length / 2
      return self.sort[middle]
    else
      middle = self.length / 2
      return (self.sort[middle] + self.sort[middle - 1]) / 2.0 
    end
  end

  def counts 
    count = Hash.new(0)

    self.each do |ele|
      count[ele] += 1
    end
    count
  end
end
