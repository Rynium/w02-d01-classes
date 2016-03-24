require "pry"
require_relative './lib/computer.rb'
require_relative './lib/house.rb'

def register_computer
  options = {}
  puts "\n\nREGISTER A COMPUTER\N"
  print "Who is the manufacturer of your computer?\n"
  make = gets.chomp
  print "\nWhat is the model of your computer?\n"
  model = gets.chomp
  print "\nWhat is the operating system of your computer?\n"
  operating_system = gets.chomp
  Computer.new(make: make, model: model, operating_system: operating_system)
end

def register_house
  options = {}
  puts "\n\nREGISTER YOUR HOME\n"
  print "\nWhat color is your house?\n"
  color = gets.chomp
  print "\nHow many floors are in your house?\n"
  floors = gets.chomp
  print "\nWhat year was your house built?\n"
  year_built = gets.chomp
  print "\nWhat is address of your house?\n"
  address = gets.chomp
  print "\nAre the lights on(Y/N)? "
  lights = gets.chomp.downcase
  while lights != "y" && lights != "n"
    print "\nSorry! Not a valid input. Are the lights on(Y/N)? "
    lights = gets.chomp.downcase
  end
  if lights == "y"
    lights = true
  elsif lights == "n"
    lights = false
  else
    puts "SOMETHING WEIRD HAS HAPPEND"
    lights = false
  end

  print "\nWould you like your house to be in SAFEMODE(Y/N)? "
  safe_mode = gets.chomp.downcase
  while safe_mode != "y" && safe_mode != "n"
    print "\nSorry! Not a valid input. Would you like your house to be in SAFEMODE(Y/N)? "
    safe_mode = gets.chomp.downcase
  end

  if safe_mode == "y"
    safe_mode = true
  elsif safe_mode == "n"
    safe_mode = false
  else
    puts "SOMETHING WEIRD HAS HAPPEND"
    safe_mode = false
  end
  House.new(color: color, floors: floors, year_built: year_built, address: address, lights: lights, safe_mode: safe_mode)
end

def computer_report(computer)
  if computer_list.lenth == 0
    puts 'You do not have any computers registered.'
  else
    puts "\n\n\nCOMPUTER INFORMATION\n"
    puts "Your computer make is #{computer.make}."
    puts "Your computer model is #{computer.model}."
    puts "Your computer operating system is #{computer.operating_system}."
    puts "Your computer is assigned to #{computer.house.address}." unless computer.house.nil?
  end
end

def house_report(house)
  if houses_list.length == 0
    puts 'You do not have any homes restistered.'
  else
    puts "\n\n\nHOUSE INFORMATION\n"
    puts "Your house address is #{house.address}."
    puts "Your house color is #{house.color}."
    puts "Your house has #{house.floors} floors."
    puts "Your house was built in #{house.year_built}."

    security = ''
    house.safe_mode ? security = "ON" : security = "ON"
    puts "SAFEMODE in your home is turned #{security}."

    house.lights ? illumination = "ON" : illumination = "OFF"
    puts "The lights in your home are turned #{illumination}."
  end
end



computer_list = []
houses_list = []

puts "\n\nWELCOME TO SMART-CONNECT\n\n"
choice = nil
while choice != 0
  puts "\n\nYou have #{computer_list.length} computer(s) and #{houses_list.length} home(s) registered."
  puts "\nHere are your options:\n1. Register Computer\n2. Register House\n3. Computer Report\n4. House Report\n0. Exit"
  print "What is your choice? "
  choice = gets.chomp.to_i

  # MAIN MENU
  if choice == 1
    computer_list << register_computer
    computer_report(computer_list.last)
  elsif choice == 2
    houses_list << register_house
    house_report(houses_list.last)
  elsif choice == 3
    computer_list.each {|x| computer_report(x)}
  elsif choice == 4
    houses_list.each {|x| house_report(x)}
  elsif choice == 0
    puts "\n\nGoodbye!"
  else
    puts "\n\nSorry! Not a valid input"
  end
end
