require_relative 'planet'
require_relative 'solar_system'

def user_choice
  puts "\nWhat would you like to do? Choose from the following options:"
  puts "List Planets\nPlanet Details\nAdd Planet\nExit"
  choice = gets.chomp.downcase
  until choice == "list planets" || choice == "exit" || choice == "planet details" || choice == "add planet"
    puts "NOT A VALID OPTION\n\n"
    choice = user_choice
  end
  return choice
end

def planet_details(planet, solar_system)
  which_planet = solar_system.find_planet_by_name(planet)
  return which_planet.summary
end

def pre_existing_planets(solar_system)
  return solar_system.list_planets
end

def add_planet(solar_system)
  print "Please enter the new planet name: "
  new_planet = gets.chomp.downcase
  check_planet = solar_system.find_planet_by_name(new_planet)

  if check_planet == nil
    print "What is planet's color? "
    new_color = gets.chomp

    print "What is planet's mass (in Kg)? "
    new_mass = gets.chomp.to_f

    print "What is planet's distance from the Sun (in Km)? "
    new_distance = gets.chomp.to_i

    print "Add a fun fact about #{new_planet}: "
    new_fact = gets.chomp

    brand_new = Planet.new(new_planet.capitalize, new_color.capitalize, new_mass, new_distance, new_fact)
    solar_system.add_planet(brand_new)

    puts "New planet added: #{brand_new.name}.\n"
    puts brand_new.summary
  else
    puts "This planet is already listed in the Solar System."
  end
  return brand_new
end

def main
  earth = Planet.new("Earth", "Blue", 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new("Mars", "Red", 6.41693e23, 230e8, 'Carries the name of the Roman God of War')
  jupiter = Planet.new("Jupiter", "Yellow", 1.898e27, 817e6, 'The largest planet in the Solar System.')
  saturn = Planet.new("Saturn", "Pale yellow", 5.69e26, 1.5e9, "Has rings made of ice mixed with dust and other chemicals.")
  uranus = Planet.new("Uranus", "Blue-green", 8.68e25, 3e9, 'The coldest of the planets.')

  solar_system = SolarSystem.new('Sun')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)

  #CLI
  keep_going = true

  while keep_going
    choice = user_choice
    if choice == "exit"
      puts "Good-bye"
      return

    elsif choice == "list planets"
      puts pre_existing_planets(solar_system) + "\n"

    elsif choice == "planet details"
      puts pre_existing_planets(solar_system) + "\n"
      print "Choose a Planet from the list and I will tell you about it: "
      chosen_planet = gets.chomp
      check = solar_system.find_planet_by_name(chosen_planet.downcase)

      if check.nil?
        puts "It looks like #{chosen_planet} is not in this Solar System"
      else
        puts planet_details(chosen_planet, solar_system) + "\n"
      end

    elsif choice == "add planet"
      puts add_planet(solar_system)
    end
  end
end

main
