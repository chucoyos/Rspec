RSpec.describe 'have_attributes matcher' do
  class ProfessionalWrestler
    attr_reader :name, :finishing_move

    def initialize(name, finishing_move)
      @name = name
      @finishing_move = finishing_move
    end
  end

  describe ProfessionalWrestler.new('Stone Cold Steve Austin', 'Stunner') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes(name: subject.name, :finishing_move => subject.finishing_move)
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin') }
    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner') }
  end
end