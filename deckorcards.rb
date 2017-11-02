deck = {hearts: ["ace",2,3,4,5,6,7,8,9,10,"jack","queen","king"],
        spades:  ["ace",2,3,4,5,6,7,8,9,10,"jack","queen","king"],
        clubs: ["ace",2,3,4,5,6,7,8,9,10,"jack","queen","king"],
        diamonds: ["ace",2,3,4,5,6,7,8,9,10,"jack","queen","king"],
       }

def shuffle deck
  deck.transform_values!(&:shuffle)
  # p deck
end

shuffle deck

def deal deck
  hand = []
  5.times do 
    hand << {(deck.keys.sample) => (deck.values.sample.sample)}
  end
  p hand
  hand.each {|card| deck[(card.keys[0])].delete(card.values[0])}
end

deal deck