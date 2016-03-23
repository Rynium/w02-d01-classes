# This class describes computer objects.
# make is astring describing the manufacturer of the computer.
# model is a string that represents the color of the car.
# operating_system is a string that represents the os of the computer.
# home_address is a string that is equal to the address from 'home.rb'


class Computer
  attr_accessor :make, :model, :operating_system

  def initialize(make:, model:, operating_system:)
    @make             = make
    @model            = model
    @operating_system = operating_system
    @home_address     = nil
  end

end
