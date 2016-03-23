# This class describes car objects.
# door_num is an integer describing the nubmer of doors.
# color is a string that represents the color of the car.
# model_year is an integer that represents the model of the car.
# manufacturer is a string that represents the manufacturer of the car.
# model is a string that represents the model of the car.
# home_address is a string that is equal to the address from 'home.rb'


class Vehicle
  attr_accessor :color, :model_year, :manufacturer, :model

  def initialize(color:, model_year:, manufacturer:, model:)
    @color        = color
    @model_year   = model_year
    @manufacturer = manufacturer
    @model        = model
    @home_address = nil

  end



end
