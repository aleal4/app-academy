class GuessingGame
  def initialize(min, max, num_attemps = 0)
    @max = max
    @min = min
    @secret_num = rand(@min..@max)
    @game_over = false
  end

end
