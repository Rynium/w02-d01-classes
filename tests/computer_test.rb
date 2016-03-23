require 'test_helper.rb'
require_relative "../lib/computer.rb"

class ComputerTest < Minitest::Test

  def test_computer_make
    computer = Computer.new(make:"Lenovo", model: "Yoga 2 Pro", operating_system: "Linux 14.4")
    actual = computer.make
    assert_equal('Lenovo', actual, "'Lenovo' as a string should be returned")

    computer.make = 'Apple'

    actual = computer.make
    assert_equal('Apple', actual, "'Apple' as a string should be returned")
  end

  def test_computer_model
    computer = Computer.new(make:"Lenovo", model: "Yoga 2 Pro", operating_system: "Linux 14.4")
    actual = computer.model
    assert_equal('Yoga 2 Pro', actual, "'Yoga 2 Pro' as a string should be returned")

    computer.model = 'Macbook Pro'

    actual = computer.model
    assert_equal('Macbook Pro', actual, "'Macbook Pro' as a string should be returned")
  end

  def test_operating_system
    computer = Computer.new(make:"Lenovo", model: "Yoga 2 Pro", operating_system: "Linux 14.4")
    actual = computer.operating_system
    assert_equal('Linux 14.4', actual, "'Linux 14.4' as a string should be returned")

    computer.operating_system = 'El Captain'

    actual = computer.operating_system
    assert_equal('El Captain', actual, "'El Captain' as a string should be returned")
  end

end
