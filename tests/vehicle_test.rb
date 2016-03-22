require "test_helper.rb"
require_relative "../lib/vehicle.rb"

class VehicleTest < Minitest::Test

  tacoma = Car.new(color: "Silver", model_year: 2007, manufacturer: "Toyota", model: "Tacoma")

  def test_car_color
    tacoma = Car.new(color: "Silver", model_year: 2007, manufacturer: "Toyota", model: "Tacoma")
    actual = tacoma.color
    assert_equal('Silver', actual, "'Silver' as a string should be returned")
  end

end
