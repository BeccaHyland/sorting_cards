
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
    correct? == true
    "Correct!"
    else
      "Incorrect."
    end
  end

end
