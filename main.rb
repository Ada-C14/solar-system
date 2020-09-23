require_relative 'planet'
require_relative 'solar_system'

def create_solar_system
  solar_system = SolarSystem.new('Sol')

  mercury = Planet.new('Mercury', 'dark gray', 3.285e23, 5.791e7, 'No moons or rings :(')
  venus = Planet.new('Venus', 'white', 4.867e24, 1.082e8, 'Thee hottest planet (hence, the name, duh)')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life so far...')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'oOoO scientists discovered a lake under an ice cap here!!')
  jupiter = Planet.new('Jupiter', 'orange', 1.898e27, 7.783e8, 'The (magnetic) force is strong with this one.')
  saturn = Planet.new('Saturn', 'yellow', 5.683e26, 1.427e9, 'Mostly made up of gas tbh.')
  uranus = Planet.new('Uranus', 'aqua', 8.681e25, 2.871e9, 'Coldest planet brrr')
  neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.498e9, 'Winds whip clouds of frozen methane at speeds greater than 2,000 km/h in this atmosphere~')
  pluto = Planet.new('Pluto', 'blue', 1.309e22, 5.906e9, 'A dwarf planet that IAU excluded T^T')

  planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]

  planets.each { |planet| solar_system.add_planet(planet) }

  return solar_system
end

def get_planet_details(solar_system)
  print "What is the name of the planet you wish to learn about? "
  planet_name = gets.chomp

  # found_planet is an instance of class Planet
  found_planet = solar_system.find_planet_by_name(planet_name)

  return found_planet.summary
end

def user_add_planet(solar_system)
  puts "I want the deets: "
  print "Name? "
  name = gets.chomp
  print "Color? "
  color = gets.chomp
  print "Mass in kg? "
  mass_in_kg = gets.chomp.to_i
  print "Distance from the sun in km? "
  distance_from_sun_km = gets.chomp.to_i
  print "Fun fact about your planet? "
  fun_fact = gets.chomp

  user_planet = Planet.new(name, color, mass_in_kg, distance_from_sun_km, fun_fact)

  solar_system.add_planet(user_planet)

  puts "Your planet #{name} was added to our Solar System!"
  puts solar_system.list_planets

  return user_planet.summary
end

def get_distance_between(solar_system)
  print "First planet? "
  first_planet_name = gets.chomp
  print "Second planet? "
  second_planet_name = gets.chomp

  return solar_system.distance_between(first_planet_name, second_planet_name)
end

def main
  my_solar_system = create_solar_system

  puts "Welcome to our Solar System in a far away galaxy!"
  puts "What do you want to do?"
  puts "1. list planets\n2. planet details\n3. add planet\n4. get distance\n5. exit"
  print ">> "

  user_input = gets.chomp.downcase

  until user_input == "exit"
    case user_input
    when "list planets"
      puts my_solar_system.list_planets
    when "planet details"
      puts get_planet_details(my_solar_system)
    when "add planet"
      puts user_add_planet(my_solar_system)
    when "get distance"
      puts get_distance_between(my_solar_system)
    else
      puts "Invalid option. Try again."
    end

    print "What do you want to do next? "
    user_input = gets.chomp.downcase
  end

  exit
end

main