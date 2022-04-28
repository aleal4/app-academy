require_relative "room"

class Hotel
  def initialize(name, room_names, capacities)
    @name = name
    @rooms = {}
  end
end
