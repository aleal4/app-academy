require 'byebug'
require_relative "room"

class Hotel
  def initialize(name, capacities)
    @name = name
    @rooms = {}

    capacities.each do |room_name, capacity|
      @rooms[room_name] = Room.new(capacity)
    end
  end

  def name 
    @name.split(" ").map(&:capitalize).join(" ")
  end

  def rooms
    @rooms
  end

  def room_exists?(room_name)
    @rooms.has_key?(room_name)
  end

  def check_in(person, room_name)
    unless self.room_exists?(room_name)
      puts 'sorry room doesn\'t exist'
      return 
    end

    succesfully_added_occupant = @rooms[room_name].add_occupant(person)

    if succesfully_added_occupant
      puts 'check in successful'
    else
      puts 'sorry, room is already full'
    end
  end

  def has_vacancy?
    debugger
    @rooms.values.any? do |room| 
      room.available_space > 0
    end
  end

  def list_rooms
    @rooms.each do |room_name, room| 
      puts "#{room_name} : #{room.available_space}"
    end
  end
end

