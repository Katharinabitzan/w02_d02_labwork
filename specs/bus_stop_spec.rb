require("minitest/autorun")
require("minitest/rg")

require_relative("../person")
require_relative("../bus")
require_relative("../bus_stop")


class BusStopTest < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Princes St")
    @person1 = Person.new("Harry", 104)
  end

  def test_name
    assert_equal("Princes St", @bus_stop.name)
  end

  def test_count_queue
    assert_equal(0, @bus_stop.count_queue)
  end

  def test_add_person_queue
    @
  end

end
