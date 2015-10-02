require 'csv'
require 'pry'
require_relative 'scrabble'

class GameReader
  attr_reader :players

    def initialize
      @players = []
    end

    def parse_scorecard()
      rows = CSV.read('../test/input.csv', headers: true, header_converters: :symbol)
      validated = rows.each_with_object([]) do |row, ary|
        @players << row[:player_id] unless @players.include?(row[:player_id])
        ary << row.to_h
      end

      scores = validated.map.group_by { |row| row[:player_id].to_i }

      scores.each_pair do |k,ary|
        words = []
        ary.each do |hsh|
          words << hsh[:word].strip
        end
        scores[k] = words
      end

      scores.each_pair do |player, words|
        total = 0
        words.each do |word|
          total += Scrabble.new.score(word)
        end
        puts "Player #{player} scored #{total}"
      end
    end
end

GameReader.new.parse_scorecard
