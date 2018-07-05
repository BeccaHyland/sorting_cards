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

  def test_current_card_is_first_card_in_array
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_round_makes_a_guess_for_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Guess, round.record_guess({value: "3", suit: "Hearts"})
  end

  def test_round_counts_guesses
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      round.record_guess({value: "3", suit: "Hearts"})
      assert_equal 1, round.guesses.count
  end

  def test_round_gives_feedback_on_first_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal "Correct!", round.guesses.first.feedback
  end

  def test_it_tallies_correct_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.number_correct
  end

  def test_round_guesses_for_next_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_instance_of Guess, round.record_guess({value: "Jack", suit: "Diamonds"})
  end

  def test_round_can_count_more_than_one_guess
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)
      round.record_guess({value: "3", suit: "Hearts"})
      round.record_guess({value: "Jack", suit: "Diamonds"})
      assert_equal 2, round.guesses.count
  end

  def test_round_gives_feedback_on_incorrect_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal "Incorrect.", round.guesses.last.feedback
  end

  def test_incorrect_guesses_are_not_tallied
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal 1, round.number_correct
  end

end
