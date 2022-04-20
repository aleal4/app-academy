class Queue

  def initialize
    @line = []
  end

  def ele_at_pos(position)
    @line[position]
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