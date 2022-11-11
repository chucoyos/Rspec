RSpec.describe '#even? method' do
  it 'should return true if number is even' do
    expect(4.even?).to eq(true)
  end

  it 'should return false if number is odd' do
    expect(4.odd?).to eq(false)
  end

end