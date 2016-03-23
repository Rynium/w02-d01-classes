require 'test_helper.rb'
require_relative '../lib/house.rb'


class HouseTest < Minitest::Test

  def test_house_color
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St')
    actual = house.color
    assert_equal('Gray', actual, "'Gray' as a string should be returned")

    house.color = "Pink"
    actual = house.color
    assert_equal('Pink', actual, "'Pink' as a string should be returned")
  end

  def test_house_floors
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St')
    actual = house.floors
    assert_equal(2, actual, "2 as an integer should be returned")

    house.floors = 3
    actual = house.floors
    assert_equal(3, actual, "3 as an integer should be returned")
  end

  def test_house_year_built
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St')
    actual = house.year_built
    assert_equal(2003, actual, "2003 as an integer should be returned")

    house.year_built = 2007
    actual = house.year_built
    assert_equal(2007, actual, "2007 as an integer should be returned")
  end

  def test_house_address
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St')
    actual = house.address
    assert_equal('274 Baker St', actual, "'274 Baker St' as a string should be returned")

    house.address = "274 Cheese St"
    actual = house.address
    assert_equal('274 Cheese St', actual, "'274 Cheese S' as a string should be returned")
  end
end
