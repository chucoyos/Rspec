class Deck
  def self.build
    # Bussiness logic
  end
end

class CardGame
  attr_reader :cards # creates a getter method for @cards
  def start
    @cards = Deck.build # define a class method
  end
end

RSpec.describe CardGame do
  it 'can only implement methods that are defined on the class' do
    #  deck_klass = class_double('Deck', build: ['Ace', 'Queen']).as_stubbed_const # this will pass even though Deck class is not defined
     deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const # create a class double and pass in a hash of methods and values

     expect(deck_klass).to receive(:build) # this will pass because Deck class has a method build
     subject.start # call the start method on the CardGame class
     expect(subject.cards).to eq(['Ace', 'Queen']) # this will pass because the start method will return an array of ['Ace', 'Queen']
  end
end