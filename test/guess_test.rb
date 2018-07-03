require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'
require 'pry'

class GuessTest < Minitest::Test
#now work on this
  def test_it_exists
    card = Card.new("2", "Diamonds")
    guess = Guess.new("King of Spades", card)
    assert_instance_of Guess, guess
  end

  def test_it_has_a_response
    #skip
    card = Card.new("2", "Diamonds")
    guess = Guess.new("7 of Clubs", card)
    assert_equal "7 of Clubs", guess.response
  end

  def test_it_has_a_card
    #skip
    card = Card.new("2", "Diamonds")
    guess = Guess.new("Ace of Hearts", card)
    assert_equal card, guess.card
  end

  def test_is_the_guess_correct?

    card = Card.new("Ace", "Hearts")
    guess = Guess.new("Ace of Hearts", card)
    assert guess.correct?
  end

  

end
