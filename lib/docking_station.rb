require_relative 'bike'

class DockingStation
    attr_reader :bikes_available
    def initialize
      @bikes_available = []
    end

    def release_bike
      raise'No Bikes Available' if @bikes_available.empty?
      @bikes_available
    end
    
    def dock_bike(bike)
        @bikes_available << bike
    end
end