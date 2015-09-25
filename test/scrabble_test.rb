gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_two_letters
    assert_equal 5, Scrabble.new.score("af")
    assert_equal 2, Scrabble.new.score("to")
  end

  def test_it_can_score_all_letters
    assert_equal 87, Scrabble.new.score("abcdefghijklmnopqrstuvwxyz")
  end

  def test_can_score_a_letter_insensitive_to_case
    assert_equal 4, Scrabble.new.score('f')
    assert_equal 4, Scrabble.new.score('F')
  end

  def test_score_for_empty_word_returns_0
    assert_equal 0, Scrabble.new.score("")
  end

  def test_score_for_nil_returns_0
    assert_equal 0, Scrabble.new.score(nil)
  end

end
