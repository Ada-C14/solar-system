require_relative 'lib/planet'
require_relative 'lib/solar_system'

def main
  # 1. Create a `SolarSystem` and add some `Planet`s
  puts "What would you like to name the star of your new solar system?"
  star_name = gets.chomp
  new_system = SolarSystem.new(star_name)
  puts "Your new solar system now has a star called:", new_system.star_name
  # 1. Enter a control loop that repeatedly asks the user what to do next. The two options at this point are `list planets` and `exit`.
  continue = 0
  until continue == 4
    puts "Please choose a number: [1] List Planets, [2] Get Planet Details, [3] Add a Planet [4] Exit"
    continue = gets.chomp.to_i
    case continue
    when 1
      puts new_system.list_planets
    when 2
      puts new_system.list_planets
      next if new_system.planets.length == 0
      puts "Which planet would you like to learn more about?"
      planet_name = gets.chomp
      new_system.find_planet_by_name(planet_name)
    when 3
      puts "You've chosen to add a planet to your solar system. Please type:"
      puts "Name:"
      name = gets.chomp
      puts "Color:"
      color = gets.chomp
      puts "Mass (KG):"
      mass_kg = gets.chomp
      puts "Distance From the Sun:"
      distance_from_sun_km = gets.chomp
      puts "Fun Fact:"
      fun_fact = gets.chomp

      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      new_system.add_planet(new_planet)
    when 4
      continue == 4
    else
      puts "Not a valid option."
    end
  end
end

main