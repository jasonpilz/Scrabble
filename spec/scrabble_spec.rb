require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'

describe Scrabble do
  describe "#score" do
    it "scores a single letter" do
      expect(Scrabble.new.score("a")).to eq(1)
      expect(Scrabble.new.score("f")).to eq(4)
    end
  end
end
