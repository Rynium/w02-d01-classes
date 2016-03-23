# This class describes computer objects.
# make is astring describing the manufacturer of the computer.
# model is a string that represents the color of the car.
# operating_system is a string that represents the os of the computer.
# home_address is a string that is equal to the address from 'home.rb'
require 'house.rb'

class Computer
  attr_accessor :make, :model, :operating_system

  def initialize(make:, model:, operating_system:)
    @make             = make
    @model            = model
    @operating_system = operating_system
    @house            = nil
  end

  def house=(house)
    @house = house
  end

  def house
    @house
  end
  
  def turn_lights_off
    @house.turn_lights_off
  end

  def turn_lights_on
    @house.turn_lights_on
  end

  def test_turn_safe_mode_on
    @house.test_turn_safe_mode_on
  end

  def test_turn_safe_mode_off
    @house.test_turn_safe_mode_off
  end

end
