class Room
  def initialize(capacity)
    @capacity = capacity
    @occupants = []
  end

  def capacity
    @capacity
  end

  def occupants
    @occupants
  end

  def full?
    if @occupants.length < @capacity
      return false
    end
    true
  end

  def available_space
    @capacity - @occupants.length
  end

  def add_occupant(occupant)
    if self.full?
      return false
    else
      @occupants << occupant
      return true
    end
  end
end