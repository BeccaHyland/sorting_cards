require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'
require './lib/deck'
require 'pry'

class DeckTest < Minitest::Test
#now work on this
  def test_it_exists
    card_1 = Card.new("King","Spades")
    card_2 = Card.new("Queen", "Hearts")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck

    #binding.pry
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


end
