require("minitest/autorun")
require("minitest/rg")

require_relative("../bus")
require_relative("../person")


class BusTest < MiniTest::Test
  def setup
    @bus = Bus.new(22, "Ocean Terminal")
  end

  def test_route
    assert_equal(22, @bus.route)
  end

  def test_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive
    assert_equal("Brum Brum", @bus.drive)
  end

  def test_count_passengers
    assert_equal(0, @bus.count_passengers)
  end

  def test_pick_up
    person1 = Person.new("Garry", 103)
    @bus.pick_up(person1)
    assert_equal(1, @bus.count_passengers)
  end

  def test_drop_off
    person1 = Person.new("Garry", 103)
    @bus.drop_off(person1)
    assert_equal(0, @bus.count_passengers)
  end

  def test_remove_all
    @bus.remove_all
    assert_equal(0, @bus.count_passengers)
  end
end
