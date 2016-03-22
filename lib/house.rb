#Describes houses
#How many floors including the basement
#Is the basement finished t/f
#What is the color
#Does it have shutters t/f
#What year was it built



class House
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
