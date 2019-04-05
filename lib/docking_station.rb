require_relative 'bike'

class DockingStation
    attr_reader :bikes_available
    BIKE_MAX_CAPACITY = 20

    def initialize
      @bikes_available = []
    end

    def release_bike
      raise'No Bikes Available' if @bikes_available.empty?
      @bikes_available.pop
    end
    
    def dock_bike(bike)
      raise 'Docking station is full' if @bikes_available.size >= BIKE_MAX_CAPACITY
      @bikes_available << bike
    end
end