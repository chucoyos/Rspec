RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)
    expect(calculator.add).to eq(15)
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10) # this is the stubbed value and not the actual value and will pass the test
    # expect(arr.sum).to eq(6) # this will fail because we stubbed the sum method to return 10

    str = 'some random string'
    allow(str).to receive(:size).and_return(100)
    expect(str.size).to eq(100) # this will pass because we stubbed the size method to return 100
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil) # provide multiple return values in sequence
    expect(mock_array.pop).to eq(:c) # it will return :c first
    expect(mock_array.pop).to eq(:b) # it will return :b second
    expect(mock_array.pop).to be_nil # it will return nil third
    expect(mock_array.pop).to be_nil # it will keep returning nil
  end
end
