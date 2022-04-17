# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length == 0
      return nil 
    end
    return self.max - self.min
  end

  def average
      return nil if self.empty?
      return (self.sum / (self.length * 1.0))
  end

  def median
      return nil if self.empty?

      if self.length.odd?
        mid_index = self.length / 2 
        return self.sort[mid_index]
      else
        mid_index = self.length / 2 
        first_ele = self.sort[mid_index]
        second_ele = self.sort[mid_index - 1]
        return (first_ele + second_ele)/2.0
      end
    end
  
  def counts
    count = Hash.new(0)
    self.each {|ele| count[ele] += 1}
    count
  end

  def my_count(input)
    count = 0
    self.each do |ele|
      if ele == input
        count += 1
      end
    end
    count
  end

  def my_index(target)
    self.each_with_index do |ele, idx| 
      if ele == target
        return idx 
      end
    end

    nil
  end

  def my_uniq 
    hash = {}
    self.each {|ele| hash[ele] = true}
    hash.keys
  end

  def my_transpose

  end
end
