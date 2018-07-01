require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/guess'
require 'pry'

class CardTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("Queen", "Hearts")
    assert_instance_of Card, card_1
  end

  def test_it_has_a_value
    card_2 = Card.new("4", "Spades")
    assert_equal "4", card_2.value
  end

  def test_it_has_a_suit
    card_3 = Card.new("2", "Diamonds")
    assert_equal "Diamonds", card_3.suit
  end

end
