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

  def new_deck
    values = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
    suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
    new_deck = []

    values.each_with_index do |val, scor|
      suits.each do |sui|
        deck.push({
          score: sco
          value: val
          suit: sui
          })
        end
      end
    return new_deck
  end

  def sort(new_deck)

    deck_length = deck.length
    loop do
        swapped = false
        (deck_length-1).times do |thing|
          if deck[thing] > deck[thing + 1]
            deck[thing], deck[thing + 1] = deck[thing + 1], deck[thing]
            swapped = true
        end
      end
      break if not swapped
    end
    deck
  end

end
