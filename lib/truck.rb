class Truck
  def initialize(options)
    @doors = options[:doors]
    @color = options[:color]
    @model_year = options[:model_year]
    @manufacturer = options[:manufacturer]
    @model = options[:model]

  end


  def doors=(doors)
    @doors = doors
  end

  def doors
    @doors
  end

  def color=(color)
    @color = color
  end

  def color
    @color
  end

  def model_year=(model_year)
    @model_year = model_year
  end

  def model_year
    @model_year
  end

  def manufacturer=(manufacturer)
    @manufacturer = manufacturer
  end

  def manufacturer
    @manufacturer
  end

  def model=(model)
    @model = model
  end

  def model
    @model
  end

end




end
