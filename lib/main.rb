require_relative "planet"
require_relative "solar_system"

# Method creates two different instances of Planet and prints out some of their attributes.
def validate_option(user_input)
  valid_options = %w[list details add distance exit]
  until valid_options.include?(user_input)
    puts "Invalid. Please enter 'list', 'details', 'add', 'distance', or 'exit'."
    user_input = gets.chomp.downcase
  end
  return user_input
end


def validate_twice(user_input)
  input_reentered = nil
  until user_input == input_reentered
    puts "Please re-enter to confirm."
    input_reentered = gets.chomp.downcase

    if user_input != input_reentered
      "Entries do not match. Please try again."
      input_reentered = nil
      user_input = gets.chomp.downcase
    end
  end

  return input_reentered.capitalize
end


def validate_measurement(user_input)
  until ( user_input == "#{user_input.to_i}" || user_input == "#{user_input.to_f}" ) && user_input.to_i > 0
    puts "Please enter a number greater than 0."
    user_input = gets.chomp
  end

  return user_input
end


def validate_planet_in_solar_system(solar_system, planet_name)
  found_planet = solar_system.find_planet_by_name(planet_name)
  while found_planet.nil?
    puts "Please enter a valid planet from the following list:"
    puts solar_system.list_planets
    found_planet = solar_system.find_planet_by_name(gets.chomp)
  end
  return found_planet
end


def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  venus = Planet.new("Venus", "white", 4.867e24, 1.502e8, "Nearly the same size as Earth.")

  solar_system.add_planet(earth)
  solar_system.add_planet(venus)

  want_to_exit = false
  user_input = ""
  until want_to_exit
    puts "What would you like to do?"
    puts "To list planets, enter 'list'."
    puts "To see planet details, enter 'details'."
    puts "To add a planet, enter 'add'."
    puts "To calculate the distance between two planets, enter 'distance'."
    puts "To exit, enter 'exit'."

    user_input = validate_option(gets.chomp.downcase)
    case user_input
    when "list"
      puts solar_system.list_planets

    when "details"
      puts "Please enter the name of the planet you wish you learn about."
      planet_of_interest = solar_system.validate_planet_in_solar_system(solar_system, gets.chomp)
      puts planet_of_interest.summary

    when "add"
      print "To add a planet, enter the name of the planet: "
      planet_name = validate_twice(gets.chomp.downcase)
      print "\nEnter the color of #{planet_name}: "
      planet_color = validate_twice(gets.chomp.downcase)
      print "\nEnter the mass of #{planet_name} in kilograms: "
      planet_mass = validate_twice(validate_measurement(gets.chomp.downcase))
      print "\nEnter the distance from #{planet_name} to the sun in kilometers: "
      planet_distance_to_sun = validate_twice(validate_measurement(gets.chomp.downcase))
      puts "\nEnter a fun fact: "
      planet_fun_fact = gets.chomp.capitalize

      new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance_to_sun, planet_fun_fact)
      solar_system.add_planet(new_planet)

      puts "#{planet_name} has been added to the database!"
      puts solar_system.list_planets

      puts "Here's what you added: \n#{new_planet.summary}"

    when "distance"
      puts "To find the distance between two planets, please enter the planet names."
      print "Planet 1: "
      planet1 = validate_planet_in_solar_system(solar_system, gets.chomp)
      print "Planet 2: "
      planet2 = validate_planet_in_solar_system(solar_system, gets.chomp)

      distance = solar_system.distance_between(planet1.name, planet2.name)
      puts "The distance between #{planet1.name} and #{planet2.name} is #{distance}km."

    else
      want_to_exit = true
      exit
    end
  end
end





main