RSpec.describe 'not_to method' do
  it 'checks that two values do not match' do
    expect(5).not_to eq(10)
    expect('Hello').not_to eq('hello')
    expect([1, 2]).not_to eq([1, 2, 3])
    expect(10).not_to be_odd
    expect("Philadelphia").not_to start_with('M')
    expect("Philadelphia").not_to end_with('e')
    expect(5).not_to respond_to(:length)
    expect([:a, :b, :c]).not_to include(:d)
    expect( 11/3 ).not_to be_within(0.2).of(4)
    expect{ 11/3 }.not_to raise_error
  end
end