RSpec.describe 'a random double' do
   
  it 'only allows defined methods to be invoked' do
    stuntman = double("Mister Danger", fall_off_ladder: 'Ouch', light_on_fire: true )

    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to be_truthy
  end

  it 'create and call the method on one line' do
    stuntman = double("Mister Danger")
    allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    allow(stuntman).to receive(:light_on_fire).and_return(true)
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
  end

end