# This class describes house objects.
# floors is an integer describing the nubmer of floors.
# finished_basement is a boolean value
# color is a string that represents the color of the floor.
# year_built is an integer that represents the year the homoe was built.
# address is a string that represents the manufacturer of the car.
require_relative 'computer.rb'


class House
  attr_accessor :color, :floors, :year_built, :address, :lights, :safe_mode
  attr_reader :computer

  def initialize(color:, floors:, year_built:, address:, lights:, safe_mode:)
    @floors             = floors
    @color              = color
    @year_built         = year_built
    @address            = address
    @lights             = lights
    @safe_mode          = safe_mode
    @computer           = nil
  end

  def lights_off
    @lights = false
    "House lights are off!"
  end

  def lights_on
    @lights = true
    "House lights are on!"
  end

  def safe_mode_on
    @safe_mode = true
    "Your house is in SAFEMODE!"
  end

  def safe_mode_off
    @safe_mode = false
    "SAFEMODE is turned off!"
  end

  def computer=(computer)
    if @computer != nil
      @computer.house = nil
      computer.house = self
    else
      @computer = computer
      computer.house = self
    end
  end

end
