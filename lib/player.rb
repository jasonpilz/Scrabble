require_relative 'scrabble'

class Player

  def initialize
    @total_score = 0
    @words = []
  end

  def play(word)
    result = Scrabble.new.score(word)
    @total_score += result
    @words << word
    result
  end

  def total
    @total_score
  end

  def won?
    if @total_score < 25
      false
    else
      true
    end
  end

  def words
    @words
  end
end
