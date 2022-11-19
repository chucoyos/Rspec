RSpec.describe "predicate methods and predicate matchers" do
  it "can be tested with Ruby methods" do
    result = 16 / 2
    expect(result.even?).to eq(true)
    expect(0.zero?).to eq(true)
  end

  describe 100 do
    it "can be tested with Ruby methods" do
      expect(subject.odd?).to eq(false)
    end

    it "can be tested with predicate matchers" do
      expect(subject).to be_even
      expect(0).to be_zero
    end
  end

  describe [] do
    it "can be tested with Ruby methods" do
      expect(subject.empty?).to eq(true)
    end

    it "can be tested with predicate matchers" do
      expect(subject).to be_empty
    end
    it { is_expected.to be_empty }
  end
end