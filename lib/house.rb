# This class describes house objects.
# floors is an integer describing the nubmer of floors.
# finished_basement is a boolean value
# color is a string that represents the color of the floor.
# year_built is an integer that represents the year the homoe was built.
# address is a string that represents the manufacturer of the car.


class House
  attr_accessor :color, :floors, :year_built, :address

  def initialize(:color, :floors, :year_built, :address)
    @floors             = :floors
    @color              = :color
    @year_built         = :year_built
    @address            = :address
  end

end
