RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end

  class CustomError < StandardError; end

  describe 'standard error' do
    it 'can check for a specific error being raised' do
      expect { some_method }.to raise_error(NameError)
      expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    end
  end

  describe CustomError do
    it 'can check for a user-created error' do
      expect { raise CustomError }.to raise_error(CustomError)
    end
  end

  describe 'instance of error' do
    it 'can check for a specific error being raised and test its message' do
      expect { raise CustomError, 'some message' }.to raise_error(CustomError, 'some message')
    end
  end
end