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
    # near_match = 0
    # need to double check
    # (0...guess_code.length).each do |i|
    #   if guess_code[i] != self[i] && self.pegs.include?(guess_code[i])
    #     near_match += 1
    #   end
    # end

    # near_match

    code_dup = self.pegs.dup
    guess_dup = guess_code.pegs.dup

    guess_dup.each_with_index do |peg, i|
      if peg == code_dup[i]
        code_dup[i] = nil
        guess_dup[i] = nil
      end
    end
    code_dup.delete(nil)
    guess_dup.delete(nil)

    count = 0
    guess_dup.each_with_index do |peg, i|
      if code_dup.include?(peg)
        count += 1
        code_dup.delete_at(code_dup.index(peg))
      end
    end
    count
  
  end

  def ==(another_code)
    self.pegs == another_code.pegs
  end
end
