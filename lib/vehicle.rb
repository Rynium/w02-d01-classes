#Class describes cars
#How many doors do they have
#What color are they
#Wwhat is the model year
#What is the manufacturer
#What is the model

class Vehicle
  def initialize(options)
    @doors        = options[:doors]
    @color        = options[:color]
    @model_year   = options[:model_year]
    @manufacturer = options[:manufacturer]
    @model        = options[:model]

  end

##############################

  def doors=(doors)
    @doors = doors
  end

  def doors
    @doors
  end

##############################

  def color=(color)
    @color = color
  end

  def color
    @color
  end

##############################


  def model_year=(model_year)
    @model_year = model_year
  end

  def model_year
    @model_year
  end

##############################

  def manufacturer=(manufacturer)
    @manufacturer = manufacturer
  end

  def manufacturer
    @manufacturer
  end

##############################

  def model=(model)
    @model = model
  end

  def model
    @model
  end

##############################

  def cool_vehicle(model, model_year)
    model == "Tacoma" && model_year == 2007
  end

end
