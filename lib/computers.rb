class Computers
  attr_reader :make, :model, :operating_system, :touch_screen
  attr_writer :operating_system

  def initialize(options)
    @make = options[:make]
    @Model = options[:model]
    @operating_system = options[:operating_system]
    @touch_screen = options[:touch_screen]
  end


end