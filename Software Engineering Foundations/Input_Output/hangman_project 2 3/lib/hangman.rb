class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, '_')
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  # Review here instead
  def get_matching_indices(char)
    matching_indices = []

    @secret_word.each_char.with_index do |ele, idx|
      if ele == char
        matching_indices << idx
      end
    end
    matching_indices
  end

  def fill_indices(char, matching_array)
    matching_array.select{|idicies| @guess_word[idicies] = char}
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts 'that has already been attempted'
      return false
    end

    @attempted_chars << char

    matching_indicies = self.get_matching_indices(char)
    if matching_indicies.empty?
      @remaining_incorrect_guesses -= 1 
    else
      self.fill_indices(char, matching_indicies)
    end

    true
  end

  def ask_user_for_guess
    puts 'Enter a char: '
    response = gets.chomp
    self.try_guess(response)
  end
end

