require_relative 'word_finder'
require_relative 'scrabble'
require 'pry'

class WordList
  attr_reader :words

  def initialize
    @words = []
  end

  def populate_list
    @words = Wordfinder.new.words
  end
end

wordlist = WordList.new
wordlist.populate_list
binding.pry
