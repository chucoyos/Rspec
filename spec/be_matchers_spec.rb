RSpec.describe "be matchers" do
    it "can test for truthiness" do
        expect(true).to be_truthy
        expect(1).to be_truthy
        expect(0).to be_truthy
        expect(-1).to be_truthy
        expect(3.14).to be_truthy
        expect(3.14).to be_truthy
        expect("string").to be_truthy
        expect("").to be_truthy
        expect(:symbol).to be_truthy
        expect(nil).to be_falsy
        expect(false).to be_falsey
    end

    it "can test for falsiness" do
        expect(false).to be_falsey
        expect(nil).to be_falsy # alias for be_falsey
    end

    it "can test for nil" do
        expect(nil).to be_nil
        my_hash = { a: 5 }
        expect(my_hash[:b]).to be_nil # key not found
    end
end