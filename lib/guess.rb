
require './lib/card'

class Guess
attr_accessor :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    @response == card.value + " of " + card.suit
  end

  def feedback
    if
    #correct? == true
    @response == card.value + " of " + card.suit
    "Correct!"
    #this was originally returning 'nil' because it said <puts "Correct!">
    else
      "Incorrect."
    end
  end

end
