require './lib/card'
require './lib/guess'
require './lib/deck'
require 'pry'

class Round
  attr_accessor :deck, :guesses, :current_card, :record_of_guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @record_of_guesses = record_of_guesses
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
