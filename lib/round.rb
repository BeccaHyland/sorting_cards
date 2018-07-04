require './lib/card'
require './lib/guess'
require './lib/deck'
require 'pry'

class Round
  attr_accessor :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []

  end

  # def
  #   @cards.unshift(@guess)
end
