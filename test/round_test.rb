require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("King","Spades")
    card_2 = Card.new("Queen", "Hearts")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_guesses_are_an_array
    card_1 = Card.new("King","Spades")
    card_2 = Card.new("Queen", "Hearts")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_current_card_is_first_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_round_records_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal ({value: "3", suit: "Hearts"}), round.record_guess(record_of_guesses)
  end

end
