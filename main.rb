require_relative 'planet'
require_relative 'solar_system'
require 'terminal-table'

def main

  # puts "New Solar System?"
  # new_solar_system = gets.chomp.downcase
  # new_system = nil
  # if new_solar_system == 'y' || new_solar_system == 'yes'
  #   puts "What is the name of the solar system?"
  #   new_system = gets.chomp
  #   new_system = SolarSystem.new(new_system)
  # end
  # puts new_system.list_planets

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet *we* know to support humans', "humans")
  solar_system.add_planet(earth)

  control_loop = []
  control_loop << [1, "List planets"]
  control_loop << [2, "Planet details"]
  control_loop << [3, "Add planet"]
  control_loop << [4, "Exit"]

  input = nil
  until input == "exit" || input == "4"
    control = Terminal::Table.new :title => "What's next?", :rows => control_loop
    puts control
    input = gets.chomp

    case input.downcase

    when "1", "list planets"
      puts solar_system.list_planets

    when "2", "planet details"
      puts "Which planet"
      planet_name = gets.chomp.capitalize
      planet = solar_system.find_planet_by_name(planet_name)
      puts planet.summary

    when "3", "add planet"
      puts "What's the name?"
      name = gets.chomp

      puts "What color is #{name}?"
      color = gets.chomp

      puts "What's the mass of #{name}?"
      mass_kg = gets.chomp.to_f

      puts "How far is #{name} from its sun?"
      distance_from_sun_km = gets.chomp.to_f

      puts "What's a fun fact about #{name}?"
      fun_fact = gets.chomp

      puts "What do you call the creatures living on #{name}?"
      inhabited = gets.chomp

      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact, inhabited )
      solar_system.add_planet(new_planet)
    end
  end

puts solar_system.list_planets

end

main

