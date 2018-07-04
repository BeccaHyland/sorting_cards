require './lib/card'
require './lib/guess'
require './lib/deck'
require 'pry'

class Round
  attr_accessor :deck, :guesses, :current_card

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards.first
  end
  # def current_card
  #
  # end
  # def
  #   @cards.unshift(@guess)
end
