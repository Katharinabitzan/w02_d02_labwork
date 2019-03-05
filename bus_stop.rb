class BusStop
  attr_reader :name
  def initialize(name, queue = [])
    @name = name
    @queue = queue
  end

  def count_queue
    return @queue.length
  end
end
