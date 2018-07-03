require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require 'pry'

class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new("2", "Diamonds")
    assert_instance_of Card, card
  end

  def test_it_has_a_value
    #skip
    card = Card.new("2", "Diamonds")
    assert_equal "2", card.value
  end

  def test_it_has_a_suit
    #skip
    card = Card.new("2", "Diamonds")
    assert_equal "Diamonds", card.suit
  end

end
