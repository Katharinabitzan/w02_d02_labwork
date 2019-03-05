class Bus
  attr_reader :route, :destination
  def initialize(route, destination, passengers = [])
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drive()
    return "Brum Brum"
  end

  def count_passengers
    @passengers.length
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.pop()
  end

  def remove_all
    @passengers.clear()
  end
end
