require "test_helper.rb"
require_relative "../lib/vehicle.rb"

class VehicleTest < Minitest::Test

  #test that color getters and setters work.
  def test_color
    tacoma = Vehicle.new(color: "Silver", model_year: 2007, manufacturer: "Toyota", model: "Tacoma")
    actual = tacoma.color
    assert_equal('Silver', actual, "'Silver' as a string should be returned")

    tacoma.color = 'Red'
    actual = tacoma.color
    assert_equal('Red', actual, "'Red' as a string should be returned")
  end

  #tests that model_year getters and setters work.
  def test_model_year
    tacoma = Vehicle.new(color: "Silver", model_year: 2007, manufacturer: "Toyota", model: "Tacoma")
    actual = tacoma.model_year
    assert_equal(2007, actual, "2007 as an integer should be returned")

    tacoma.model_year = 2014
    actual = tacoma.model_year
    assert_equal(2014, actual, "2014 as an integer should be returned")
  end

  #tests that model_year getters and setters work.
  def test_manufacturer
    tacoma = Vehicle.new(color: "Silver", model_year: 2007, manufacturer: "Toyota", model: "Tacoma")
    actual = tacoma.manufacturer
    assert_equal('Toyota', actual, "'Toyota' as a string should be returned")

    tacoma.manufacturer = 'Honda'
    actual = tacoma.manufacturer
    assert_equal('Honda', actual, "'Honda' as a string should be returned")
  end

  #tests that model getters and setters work.
  def test_model
    tacoma = Vehicle.new(color: "Silver", model_year: 2007, manufacturer: "Toyota", model: "Tacoma")
    actual = tacoma.model
    assert_equal('Tacoma', actual, "'Tacoma' as a string should be returned")

    tacoma.model = 'Tundra'
    actual = tacoma.model
    assert_equal('Tundra', actual, "'Tundra' as a string should be returned")
  end

end
