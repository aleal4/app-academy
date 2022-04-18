require_relative "room"

class Hotel

  def initialize(name, hash)
    @name = name
    @rooms = {}
    hash = hash.each do |room_name, capacity|
      @rooms[room_name] = Room.new(capacity)
    end
  end



  

end
