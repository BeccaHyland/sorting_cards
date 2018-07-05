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
    #changed unshift to shovel after test for Incorrect guess needs guess to be last
    @number_correct = 0
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(response)
    @response = response[:value] + " of " + response[:suit]
    guess = Guess.new(@response, current_card)
    @guesses << guess
      if guesses.last.correct?
        @number_correct += 1
      end
    guess
  end

  def count
    @guesses.count
  end

  def percent_correct
    @number_correct.to_f / @guesses.count * 100
  end
end
