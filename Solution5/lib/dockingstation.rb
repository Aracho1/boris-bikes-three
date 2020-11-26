require_relative '../lib/bike.rb'
class DockingStation
 attr_reader :bike, :docked_bikes

 def initialize
   @docked_bikes = []
 end

  def release_bike
    @bike = Bike.new
    if docked_bikes.count == 0
      raise StandardError.new('no bikes available')
    end
  end

  def dock(bike)
    @docked_bikes << bike
  end
end
