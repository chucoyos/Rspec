RSpec.describe "change matcher" do
    subject { [1, 2, 3] }
    it "checks that a method changes object state" do
        expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
        expect { subject.push(4) }.to change { subject.length }.by(1)
        expect { subject.push(4) }.to change { subject.length }.by_at_least(1)
        expect { subject.push(4) }.to change { subject.length }.by_at_most(1)
        expect { subject.push(4) }.to change { subject.length }.by_at_most(4)
        expect { subject.push(4) }.to change { subject.length }.by_at_most(5)
        expect { subject.push(4) }.to change { subject.length }.by_at_most(6)
        expect { subject.push(4) }.to change { subject.length }.by_at_most(7)
        expect { subject.push(4) }.to change { subject.length }.by_at_most(8)
        expect { subject.push(4) }.to change { subject.length }.by_at_most(9)
    end

    it "accepts negative arguments" do
        expect { subject.pop }.to change { subject.length }.from(3).to(2)
        expect { subject.pop }.to change { subject.length }.by(-1)
        expect { subject.pop }.to change { subject.length }.by_at_least(-1)
        expect { subject.pop }.to change { subject.length }.by_at_most(1) # by_at_most(-1) is not allowed
    end
end