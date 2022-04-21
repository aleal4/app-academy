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

  def self.from_string(pegs)
    Code.new(pegs.split(''))
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

  def num_exact_matches(guess_code)
    matches = 0
    (0...guess_code.length).each do |i|
      if guess_code[i] == self[i]
        matches += 1
      end
    end
    matches
  end

  def num_near_matches(guess_code)
    count = 0
    # need to double check
    (0...guess_code.length).each do |i|
      if guess_code[i] != self[i] && self.pegs.include?(guess_code[i])
        count += 1
      end
    end

    count
  end

  def ==(another_code)
    self.pegs == another_code.pegs
  end
end
