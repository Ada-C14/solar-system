require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")

  trill = Planet.new("Trill", "Purple", 1.372e24, 1.206e5, "It is full of caves!")
  solar_system.add_planet(trill)

  cardassia = Planet.new("Cardassia", "Brown", 5.012e16, 2.365e7, "It is very hot!")
  solar_system.add_planet(cardassia)

  earth = Planet.new("Qo'noS", "Green", 5.972e24, 1.496e8, "It is hard to spell!")
  solar_system.add_planet(earth)

  bajor = Planet.new("Bajor", "Blue", 3.721e4, 1.916e12, "It is by a wormhole!")
  solar_system.add_planet(bajor)

  selection = ""
  while selection != "exit"
    puts "What would you like to do?\nlist planets\nplanet details\nadd planet\nfind distance\nexit"
    selection = gets.chomp.downcase
    case selection
    when "list planets"
      puts solar_system.list_planets
    when "planet details"
      # add a helper method to check that planet is actually in solar_system?
      puts "What planet would you like to know about?\n#{solar_system.list_planets}"
      curious_planet = gets.chomp
      curious_planet_answers = solar_system.find_planet_by_name(curious_planet)
      puts curious_planet_answers.summary
    when "add planet"
      puts "What is the name of this new planet?"
      new_name = gets.chomp
      puts "What color is the new planet?"
      new_color = gets.chomp
      puts "What is the mass of the new planet in kg?"
      new_mass = gets.chomp.to_f
      puts "How far is the new planet from #{solar_system.star_name} in km?"
      new_distance = gets.chomp.to_f
      puts "What is a fun fact about the new planet?"
      new_fact = gets.chomp
      new_planet = Planet.new(new_name, new_color, new_mass, new_distance, new_fact)
      solar_system.add_planet(new_planet)
    when "find distance"
      # add a helper method to check that planet is actually in solar_system?
      puts "what is the planet you are starting from?"
      planet1 = gets.chomp
      puts "what is the planet you are ending on?"
      planet2 = gets.chomp
      puts solar_system.distance_between(planet1, planet2)
    else
      puts "that is not a valid selection"
      # TODO Ringo make this make sense
      # if I do not have a
      # selection = gets.chomp
      # line, than putting "exit" puts "that is not a valid selection" before ending
      # if I do have it then it bugs user to enter their selection AGAIn
      # at the top of the loop
    end
  end
end

# TODO Ringo get rid of this
# def scratchpad
#   solar_system = SolarSystem.new("Sol")
#
#   trill = Planet.new("Trill", "Purple", 1.372e24, 1.206e5, "It is full of caves!")
#   solar_system.add_planet(trill)
#
#   cardassia = Planet.new("Cardassia", "Brown", 5.012e16, 2.365e7, "It is very hot!")
#   solar_system.add_planet(cardassia)
#
#   earth = Planet.new("Qo'noS", "Green", 5.972e24, 1.496e8, "It is hard to spell!")
#   solar_system.add_planet(earth)
#
#   bajor = Planet.new("Bajor", "Blue", 3.721e4, 1.916e12, "It is by a wormhole!")
#   solar_system.add_planet(bajor)
#
# end

main

