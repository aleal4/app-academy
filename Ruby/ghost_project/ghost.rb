require 'set'

class GhostGame
  def initialize(*players)
    words = File.readlines('dictionary.text').map(&:chomp)
    @players = players
    @fragment = ''
    @dictionary = Set.new(words)
  end


end