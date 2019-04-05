require_relative 'bike'

class DockingStation
    attr_reader :bikes_available
    DEFAULT_CAPACITY = 20

    def initialize
      @bikes_available = []
    end

    def release_bike
      raise'No Bikes Available' if empty?
      @bikes_available.pop
    end
    
    def dock_bike(bike)
      raise 'Docking station is full' if full?
      @bikes_available << bike
    end
    
    private
    def full?
      true if @bikes_available.size >= DEFAULT_CAPACITY
    end

    def empty?
      true if @bikes_available.empty?
    end
end