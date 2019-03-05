require("minitest/autorun")
require("minitest/rg")

require_relative("../person")
require_relative("../bus")


class PersonTest < MiniTest::Test
  def setup
    @person = Person.new("Garry", 103)
  end

  def test_name
    assert_equal("Garry", @person.name)
  end
  def test_age
    assert_equal(103, @person.age)
  end
end
