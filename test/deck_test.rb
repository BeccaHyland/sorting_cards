require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'
require './lib/deck'
require 'pry'

class DeckTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("King","Spades")
    card_2 = Card.new("Queen", "Hearts")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

  def test_it_has_cards
    card_1 = Card.new("King","Spades")
    card_2 = Card.new("Queen", "Hearts")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal ([card_1, card_2, card_3]), deck.cards
  end

  def test_it_has_the_correct_number_of_cards
    card_1 = Card.new("King","Spades")
    card_2 = Card.new("Queen", "Hearts")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck.count
  end

  def test_the_bubble_sort_works
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
    assert_equal ([card_1, card_3, card_2, card_5, card_4]), deck.sort
  end

end
