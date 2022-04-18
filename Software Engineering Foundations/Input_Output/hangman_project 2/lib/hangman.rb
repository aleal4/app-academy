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

  def get_matching_indices(guess)
    new_arr = []
    @secret_word.each_char.with_index do |secret_char, i|
      if secret_char == guess
        new_arr << i
      end
    end
    new_arr
  end

  def fill_indices(char, indices)
    indices.each {|index| @guess_word[index] = char}
  end

  def try_guess(char)
    if self.already_attempted?(char) 
      puts 'that has already been attempted'
      return false
    end

    @attempted_chars << char

    matching_indices = self.get_matching_indices(char)
    if matching_indices.empty?
      @remaining_incorrect_guesses -= 1
    else
      self.fill_indices(char, matching_indices)
    end

    true
  end
 
  def ask_user_for_guess
    puts 'Enter a char:'
    user_guess = gets.chomp 
    self.try_guess(user_guess)
  end

  def win?
    if @secret_word == @guess_word.join('')
      print 'WIN'
      return true
    else
      return false
    end
  end

end
