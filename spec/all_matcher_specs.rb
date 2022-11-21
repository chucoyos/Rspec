RSpec.describe "all matcher" do
    it "allows for aggregate checks" do
        [5, 7, 9].each do |val|
        expect(val).to be_odd
        end
    end
    
    it "allows for aggregate checks" do
        expect([5, 7, 9]).to all(be_odd)
        expect([4, 6, 8, 10]).to all(be_even)
        expect([[], [], []]).to all(be_empty)
        expect([0, 0, 0]).to all(be_zero)
        expect([[], [], []]).to all(be_empty)
        expect([0, 0, 0]).to all(be_zero)
        expect([0, 0, 0, 0]).to all(be < 5)
    end
    
    describe [5, 7, 9] do
        it "can test for aggregates" do
        expect(subject).to all(be_odd)
        expect(subject).to all(be < 10)
        end
    end
end
