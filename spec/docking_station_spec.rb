require 'docking_station'

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
      expect(subject.dock_bike(bike)).to eq([bike])
      expect(subject.bikes_available.size).to be <= DockingStation::DEFAULT_CAPACITY
    end

    it 'raises an error if bike capacity if full' do
      20.times{subject.dock_bike(Bike.new)}
      expect {subject.dock_bike(Bike.new)}.to raise_error 'Docking station is full'
    end

  end
end
