RSpec.describe "before and after hooks" do
  before(:all) do
    puts 'Before all'
  end
  before(:context) do
    puts 'Before context'
  end
  before(:example) do
    puts 'Before example'
  end
  before(:each) do
    puts 'Before each'
  end
  after(:each) do
    puts 'After each'
  end
  after(:example) do
    puts 'After example'
  end
  after(:context) do
    puts 'After context'
  end
  after(:all) do
    puts 'After all'
  end

  it 'just runs a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'runs another random example' do
    expect(3 - 2).to eq(1)
  end

end