RSpec.describe "contain_exactly matcher" do
    subject { [1, 2, 3] }
    it "allows for aggregate checks" do
        expect(subject).to contain_exactly(1, 2, 3)
        expect(subject).to contain_exactly(3, 2, 1)
        expect(subject).to contain_exactly(2, 3, 1)
        expect(subject).to contain_exactly(1, 3, 2)
        expect(subject.length).to eq(3)
    end
    describe [1, 2, 3] do
        it { is_expected.to contain_exactly(1, 2, 3) }
        it { is_expected.to contain_exactly(3, 2, 1) }
        it { is_expected.to contain_exactly(3, 1, 2) }
        it { is_expected.to contain_exactly(2, 1, 3) }
        it { is_expected.to contain_exactly(2, 3, 1) }
    end
    describe 'long form syntax' do
        it 'can use the long form syntax' do
            expect(subject).to contain_exactly(
                a_value > 0,
                a_value > 1,
                a_value < 4
            )
        end
    end
end