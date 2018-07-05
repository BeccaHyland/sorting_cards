require './lib/card'
require './lib/guess'
require 'pry'

class Deck
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort(deck)
    deck_length = deck.length
    loop do
        swapped = false
        (deck_length-1).times do |thing|
          if deck |thing| > deck |thing + 1|

        end
      end
    end
  end

end
