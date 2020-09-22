require_relative 'planet'
require_relative 'solar_system'

def main
  # def build_solar_system
  # create planets & solar system
  solar_system = SolarSystem.new('Sol')

  mercury = Planet.new("Mercury", 'blue', 3.285e23, 69.73e7, 'Sailor Mercury has water powers')
  solar_system.add_planet(mercury)

  venus = Planet.new("Venus", 'yellow', 4.87e24, 108e6, "Sailor Venus has...hard-to-describe aphroditic powers")
  solar_system.add_planet(venus)

  earth = Planet.new("Earth", 'blue-green', 5.972e24, 1.496e8, 'There is no Sailor Earth!')
  solar_system.add_planet(earth)

  mars = Planet.new("Mars", 'red', 6.39e23, 230.26e6, "Sailor Mars has fire powers")
  solar_system.add_planet(mars)

  jupiter = Planet.new("Jupiter", 'yellow', 1.898e27, 817e6, "Sailor Jupiter has thunder powers")
  solar_system.add_planet(jupiter)


  def view_details_for_a_planet(solar_system)
    puts "\nWhat planet would you like to learn about?"
    found_planet = solar_system.find_planet_by_name(gets.chomp)
    return found_planet.summary
  end

  #   puts "Okay, for what planet?  Please enter a planet."
  #   found_planet = solar_system.find_planet_by_name(gets.chomp)
  #   if found_planet === "N/A"
  #     puts "Sorry! I don't recognize that planet, please try something else!"
  #   else
  #     return found_planet.summary
  #   end
  # end

  def add_planet(solar_system)
    puts "Okay, what is the name of the planet?"
    new_planet_name = gets.chomp.capitalize
    puts "And what is the planet color?"
    new_planet_color = gets.chomp
    puts "The mass in kg?"
    new_planet_mass = gets.chomp
    puts "The distance from the sun in km?"
    new_planet_distance = gets.chomp
    puts "And lastly, share a fun fact about the planet."
    new_planet_fun_fact = gets.chomp

    new_planet = Planet.new(new_planet_name, new_planet_color, new_planet_mass, new_planet_distance, new_planet_fun_fact)
    solar_system.add_planet(new_planet)

    puts "Thank you.  The data for #{new_planet.name} has been inputted into the system."

  end

  puts "Welcome to the Solar System Program!"
  puts "What would you like to do? Input a number or type else type 'exit' to quit:
  1) List planets in the solar system
  2) List planet details
  3) Add a planet"

  loop do
  user_input = gets.chomp.downcase
  case user_input
  when "1"
    puts solar_system.list_planets
    puts ""
    puts "What would you like to do next?"
  when "2"
    puts view_details_for_a_planet(solar_system)
    puts ""
    puts "What would you like to do next?"
  when "3"
    puts add_planet(solar_system)
    puts ""
    puts "What would you like to do next?"
  when "exit"
    puts "Thanks for playing, bye!"
    break
  else
    puts "Sorry, didn't understand that.  Please select a valid option!"
  end
  end


  end

# end

puts main

