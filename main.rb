require_relative 'planet'
require_relative 'solar_system'

def main

  jupiter = Planet.new('Jupiter', 'brown', 4.972e24, 1.506e8, 'Only planet known how to be happy in life')
  venus = Planet.new('Venus', 'gray', 2.972e24, 1.126e8, 'Only planet known how to travel around the world')
  #===================
  # create an instance of SolarSystem, add all your Planets to it
  solar_system = SolarSystem.new('Sol')

  all_planets = [jupiter, venus]
  all_planets.each do |planet|
    solar_system.add_planet(planet)
  end

  while true
    puts "please select one: \n- list planets \n- planet details \n- add planet \n- enter exit to quit!"
    print "? "
    user_input = gets.chomp

    case user_input

    when "list planets"
      puts solar_system.list_planets

    when "planet details"
      puts "which planet(name of the planet)?"
      planet_name = gets.chomp.capitalize!
      planet_summary = solar_system.find_planet_by_name(planet_name)
      puts planet_summary.summary

    when "add planet"
      puts "enter the name of the planet you would like to add: "
      name = gets.chomp.capitalize!
      puts "color of the planet? "
      color = gets.chomp.capitalize!
      puts "planet's mass in kg?"
      mass_kg = gets.chomp.to_i
      puts "planet distance from the sun?"
      distance_from_sun_km = gets.chomp.to_i
      puts "a fun fact about the planet?"
      fun_fact = gets.chomp
      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(new_planet)

    when "exit"
      break
    else
      puts "wrong input"
    end
  end
end


main