class Wordfinder
  attr_reader :words

  def words
    @words = File.read('/usr/share/dict/words').split("\n")
  end

  def find_word_for_score(score)
    # TODO
  end

end
