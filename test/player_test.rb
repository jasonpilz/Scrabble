gem 'minitest'
require './lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PlayerTest < Minitest::Test

  def test_player_class_can_initialize_and_return_an_instace_of_player_class
    assert_equal Player, Player.new.class
  end

  def test_play_returns_score_for_word_played
    assert_equal 8, Player.new.play('hello')
  end

  def test_play_returns_score_for_different_word_played
    assert_equal 5, Player.new.play('hi')
  end

  def test_total_returns_total_score_for_all_words_played
    player1 = Player.new
    player1.play('hello')
    player1.play('hi')
    assert_equal 13, player1.total
  end

  def test_won_returns_false_is_total_less_than_25
    player1 = Player.new
    player1.play('hello')
    player1.play('hi')
    refute player1.won?
  end

  def test_won_returns_true_is_total_over_25
    player1 = Player.new
    player1.play('hello')
    player1.play('hi')
    player1.play('snacker')
    assert player1.won?
  end

  def test_words_returns_array_of_words_played
    player1 = Player.new
    player1.play('hello')
    player1.play('hi')
    player1.play('snacker')
    assert_equal ['hello', 'hi', 'snacker'], player1.words
  end

end
