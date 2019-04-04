require 'docking_station'
#require 'bike'

RSpec.describe DockingStation do
  describe '#release_bike' do
    it {is_expected.to respond_to(:release_bike)}
    it ' gets a bike' do
      bike = Bike.new
      expect(bike).to be_working
    end
    it 'raises error if no bikes are available' do
      expect {subject.release_bike}.to raise_error 'No Bikes Available'
    end
  end

  describe '#dock_bike' do
    it {is_expected.to respond_to(:dock_bike)}
    it {is_expected.to respond_to(:dock_bike).with(1).arguments}
    it 'must dock bike' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq(bike)
      expect(subject.bike).to eq(bike)
    end
  end
end
