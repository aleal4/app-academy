class Board
  def initialize(n)
    @grid = Array.new(n) {Array.new(n, :N)}
    @size = n * n
  end

  def size
    @size
  end

  def [](position)
    row, col = position
    @grid[row][col]
  end

  def []=(position, value)
    row, col = position
    @grid[row][col] = value
  end

  def num_ships
    count = 0

    @gird.each do |row|
      row.each do |column|
        if row[column] == :S
          count += 1
        end
      end
    end

    count
  end
end
