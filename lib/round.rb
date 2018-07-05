require './lib/card'
require './lib/guess'
require './lib/deck'
require 'pry'

class Round
  attr_accessor :deck,
                :guesses,
                :number_correct

  def initialize(deck)
    @deck = deck
    # @guesses are the ones that have already been guessed
    @guesses = []
    #round.record_guess() shovels (unshift) into an array at some point.
    @number_correct = 0
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(response)
    @response = response[:value] + " of " + response[:suit]
    guess = Guess.new(@response, current_card)
    @guesses.unshift(guess)
    guess
  end

  def count
    @guesses.count
  end

end
