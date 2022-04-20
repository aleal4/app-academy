class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs 

  def self.valid_pegs?(chars)
    chars.all? { |chars| POSSIBLE_PEGS.has_key?(chars.upcase)}
  end

  def self.random(length)
    random_pegs = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(random_pegs)
  end


  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = chars.map(&:upcase) 
    else
      raise 'error!'
    end
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end
end
