class Truck
  attr_reader :floors, :finished_basement, year_built
  attr_accessor :color, :shutters

  def initialize(options)
    @floors = options[:floors]
    @finished_basement = options[:finished_basement]
    @color = options[:color]
    @shutters = options[:shutters]
    @year_built = options[:year_built]
  end

end
