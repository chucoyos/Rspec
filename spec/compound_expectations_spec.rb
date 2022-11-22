RSpec.describe 'compound expectations' do
  subject { ['racecar', 'civic', 'revel'] }
  it 'can check for multiple matchers' do
    expect(subject).to all(start_with('r').or start_with('c'))
  end
end

RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be < 30
  end

  it { is_expected.to be_odd.and be < 30 } 
end

RSpec.describe 'Caterpillar' do
  it  'supports multiple matchers on a single line' do
    expect(subject).to start_with('C').and end_with('r')
  end

  it { is_expected.to start_with('C').and end_with('r') }
end

RSpec.describe [:usa, :canada, :mexico] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico) #sample returns a random element from the array
  end
end

