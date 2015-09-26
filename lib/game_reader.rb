require 'csv'
require 'pry'

class GameReader
attr_reader :players

  def initialize
    @players = []
  end

  def parse_scorecard(validated = [])
    rows = CSV.read('../test/input.csv', headers: true, header_converters: :symbol)
    rows.each do |row|
      @players << row[:player_id] unless @players.include?(row[:player_id])
      validated << row.to_h
    end

    results = {}
    validated.each do |word_score|
      
    end

    binding.pry
  end

end

GameReader.new.parse_scorecard
