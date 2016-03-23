require 'test_helper.rb'
require_relative '../lib/house.rb'


class HouseTest < Minitest::Test

  #tests that color getters and setters work.
  def test_house_color
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: true, safe_mode:true)
    actual = house.color
    assert_equal('Gray', actual, "'Gray' as a string should be returned")

    house.color = "Pink"
    actual = house.color
    assert_equal('Pink', actual, "'Pink' as a string should be returned")
  end

  #tests that floor getters and setters work.
  def test_house_floors
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: true, safe_mode:true)
    actual = house.floors
    assert_equal(2, actual, "2 as an integer should be returned")

    house.floors = 3
    actual = house.floors
    assert_equal(3, actual, "3 as an integer should be returned")
  end

  #tests that year_built getters and setters work.
  def test_house_year_built
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: true, safe_mode:true)
    actual = house.year_built
    assert_equal(2003, actual, "2003 as an integer should be returned")

    house.year_built = 2007
    actual = house.year_built
    assert_equal(2007, actual, "2007 as an integer should be returned")
  end

  #tests that color address getters and setters work.
  def test_house_address
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St',lights: true, safe_mode:true)
    actual = house.address
    assert_equal('274 Baker St', actual, "'274 Baker St' as a string should be returned")

    house.address = "274 Cheese St"
    actual = house.address
    assert_equal('274 Cheese St', actual, "'274 Cheese S' as a string should be returned")
  end

  def test_creating_without_computer
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St',lights: true, safe_mode:true)
    assert_nil(house.computer)
  end

  #tests that the lights_off function works
  def test_turn_lights_off
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: true, safe_mode:true)
    actual = house.lights
    assert_equal(true, actual, "'true' as a boolean should be returned")

    house.lights_off
    actual = house.lights
    assert_equal(false, actual, "'false' as a boolean should be returned")
  end

  #tests that the lights_on function works even if the lights are on already
  def test_turn_lights_on
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: false, safe_mode:true)
    house.lights_on
    actual = house.lights
    assert_equal(true, actual, "'true' as a boolean should be returned")

    house.lights_on
    actual = house.lights
    assert_equal(true, actual, "'true' as a boolean should be returned")
  end

  #tests turn_lights_on return message
  def test_turn_lights_on_return
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: false, safe_mode:true)
    actual = house.lights_on
    assert_equal('House lights are on!', actual, "'House lights are on!' as a string should be returned")
  end

  #tests turn_lights_off return message
  def test_turn_lights_off_return
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: true, safe_mode:true)
    actual = house.lights_off
    assert_equal('House lights are off!', actual, "'House lights are on!' as a string should be returned")
  end

  #tests that safe mode on works correctly
  def test_turn_safe_mode_on
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: false, safe_mode:false)
    actual = house.safe_mode
    assert_equal(false, actual, "'false' as a boolean should be returned")

    house.safe_mode_on
    actual = house.safe_mode
    assert_equal(true, actual, "'true' as a boolean should be returned")
  end

  #tests that safe mode off works correctly
  def test_turn_safe_mode_off
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: false, safe_mode:true)
    actual = house.safe_mode
    assert_equal(true, actual, "'true' as a boolean should be returned")

    house.safe_mode_off
    actual = house.safe_mode
    assert_equal(false, actual, "'false' as a boolean should be returned")
  end

  #tests turn_lights_off return message
  def test_turn_safe_mode_on_return
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: true, safe_mode:true)
    actual = house.safe_mode_on
    assert_equal('Your house is in SAFEMODE!', actual, "'Your house is in SAFEMODE!' as a string should be returned")
  end

  def test_turn_safe_mode_off_return
    house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: true, safe_mode:true)
    actual = house.safe_mode_off
    assert_equal('SAFEMODE is turned off!', actual, "'SAFEMODE is turned off!' as a string should be returned")
  end

  #tests assinging a computer to a person
  def test_giving_a_house_a_computer
    ryans_house = House.new(color: "Gray", floors: 2, year_built: 2003, address: '274 Baker St', lights: true, safe_mode:true)
    ryans_pc = Computer.new(make: "Lenovo", model: "Yoga 2 Pro", operating_system: "Linux 14.4")

    # Expect the house to have no computer
    assert_nil(ryans_house.computer)

    # Give the house a computer
    ryans_house.computer=(ryans_pc)

    # Expect the bear to NOT have no farm
    refute_nil(ryans_house.computer)
  end

end
