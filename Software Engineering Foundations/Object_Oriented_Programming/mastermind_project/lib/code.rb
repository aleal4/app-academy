class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(chars)
    chars.all? { |chars| POSSIBLE_PEGS.has_key?(chars.upcase)}
  end

  attr_reader :pegs 
  
  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = chars.map(&:upcase) 
    else
      raise 'error!'
    end

  end
end
