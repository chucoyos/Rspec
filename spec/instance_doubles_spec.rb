class Person
  def a
    sleep(3)
    'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)
      expect(person.a).to eq('Hello') # this will pass because class Person has a method a
      expect(person.b).to eq(20) # this will pass even though Person doesn't have a b method
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      person = instance_double(Person, a: 'Hello') # create an instance of Person and pass in a hash of methods and values
      # allow(person).to receive(:a).with(3, 10).and_return('Hello') # this will fail because Person doesn't have a method a with 2 arguments
      expect(person.a).to eq('Hello')
      # expect(person.b).to eq(20) # this will fail because Person doesn't have a b method
    end
  end
end