require_relative "planet"
require_relative "solar_system"


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
    print "Please re-enter to confirm: "
    input_reentered = gets.chomp.downcase

    if user_input != input_reentered
      puts "Entries do not match. Please try again."
      input_reentered = nil
      user_input = gets.chomp.downcase
    end
  end

  return input_reentered.capitalize
end


def validate_measurement(user_input)
  until user_input.to_i > 0 || user_input.to_f > 0
    puts "Please enter a number greater than 0."
    user_input = gets.chomp
  end
  return user_input
end


def validate_to_integer(user_input)
  until user_input == "#{user_input.to_i}"
    puts "Please enter an integer."
    user_input = gets.chomp
  end
  return user_input.to_i
end


def select_from_duplicate_planet_names(planet_array)
  planet_array.each_with_index { |planet, i| puts "#{ i + 1 }. #{planet.name}\n" }

  user_selection = ""
  length = planet_array.length

  until (0..length).include?(user_selection)
    puts "To select a planet, enter the number next to the planet."
    user_selection = validate_to_integer(gets.chomp)
  end

  index = user_selection - 1
  selected_planet = planet_array[index]

  return selected_planet
end


def select_planet(solar_system, planet_name)
  found_planet = solar_system.find_planet_by_name(planet_name)

  if found_planet.is_a? Array
    return select_from_duplicate_planet_names(found_planet)
  elsif found_planet.is_a? Planet
    return found_planet
  end
  # Rescues Error if planet name does not match planets in solar_system.
  rescue ArgumentError => exception
    puts exception

    if solar_system.planets.empty?
      return "...No planets found orbiting #{solar_system.star_name}"
    elsif found_planet.nil?
      while found_planet.nil?
        begin
        puts "Please enter a valid planet from the following list:"
        puts solar_system.list_planets
        found_planet = solar_system.find_planet_by_name(gets.chomp)
        # Rescues Error if planet name does not match planets in solar_system.
        rescue ArgumentError => exception
          puts exception
        end
      end

      if found_planet.is_a? Array
        return select_from_duplicate_planet_names(found_planet)
      else
        return found_planet
      end
    end
end


def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  venus = Planet.new("Venus", "white", 4.867e24, 1.078e8, "Nearly the same size as Earth.")

  solar_system.add_planet(earth)
  solar_system.add_planet(venus)

  want_to_exit = false
  until want_to_exit
    puts "\nWhat would you like to do?"
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
      planet_of_interest = select_planet(solar_system, gets.chomp)
      puts planet_of_interest.summary

    when "add"
      print "To add a planet, enter the name of the planet: "
      planet_name = validate_twice(gets.chomp.downcase)
      print "\nEnter the color of #{planet_name}: "
      planet_color = validate_twice(gets.chomp.downcase)
      print "\nEnter the mass of #{planet_name} in kilograms: "
      planet_mass = validate_measurement(gets.chomp.downcase)
      planet_mass = validate_twice(planet_mass).to_f
      print "\nEnter the distance from #{planet_name} to the sun in kilometers: "
      planet_distance_to_sun = validate_measurement(gets.chomp.downcase)
      planet_distance_to_sun = validate_twice(planet_distance_to_sun).to_f
      puts "\nEnter a fun fact: "
      planet_fun_fact = gets.chomp.capitalize

      new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance_to_sun, planet_fun_fact)
      solar_system.add_planet(new_planet)

      puts "#{planet_name} has been added to the database!"
      puts solar_system.list_planets

      puts "\nHere's what you added: \n#{new_planet.summary}"

    when "distance"
      puts "To find the distance between two planets, please enter the planet names."
      print "Planet 1: "
      planet1 = select_planet(solar_system, gets.chomp)
      print "Planet 2: "
      planet2 = select_planet(solar_system, gets.chomp)

      begin
      distance = solar_system.distance_between(planet1.name, planet2.name)
      rescue ArgumentError
        distance = (planet1.distance_from_sun_km - planet2.distance_from_sun_km)
        distance = -distance if distance.negative?
      end

      puts "The distance between #{planet1.name} and #{planet2.name} is #{distance}km."
    else
      want_to_exit = true
      exit
    end
  end
end


main

