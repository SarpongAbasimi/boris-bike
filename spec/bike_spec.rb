require 'bike'

RSpec.describe Bike do
  RSpec.configure do |config|
    config.example_status_persistence_file_path = 'fail_test.txt'
  end
  describe '#working?'do
    it {is_expected.to respond_to(:working?)}

    it 'should be true' do
      expect(subject).to be_working
    end
  end
end