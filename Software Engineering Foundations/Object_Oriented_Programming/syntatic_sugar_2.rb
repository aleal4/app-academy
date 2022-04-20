class Queue

  def initialize
    @line = []
  end

  def [](position)
    @line[position]
  end

  def []=(position, ele)
    @line[position] = ele
  end

  def add(ele)
    @line << ele
    nil
  end

  def remove
    @line.shift
  end
end

checkout = Queue.new
checkout.add('Alan')
checkout.add('Alonzo')

p checkout[0] = 'Grace'
# p checkout.[]=(0, 'Grace')
# p checkout[1]
