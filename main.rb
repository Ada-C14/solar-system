require_relative "planet"
require_relative "solar_system"
require "colorize"

def main
  solar_system = SolarSystem.new("Trek Star")

  trill = Planet.new("Trill", "purple", 1.372e24, 1.206e5, "It is full of caves")
  solar_system.add_planet(trill)

  cardassia = Planet.new("Cardassia", "brown", 5.012e16, 2.365e7, "It is very hot")
  solar_system.add_planet(cardassia)

  qonos = Planet.new("Qo'noS", "green", 5.972e24, 1.496e8, "It is hard to spell")
  solar_system.add_planet(qonos)

  bajor = Planet.new("Bajor", "blue", 3.721e4, 1.916e12, "It is by a wormhole")
  solar_system.add_planet(bajor)

  def prompt_user
    puts "What would you like to do?".colorize(:blue)
    puts "list planets\nplanet details\nadd planet\nfind distance\nexit".colorize(:cyan)
    return gets.chomp.downcase
  end

  selection = prompt_user
  while selection != "exit"
    case selection

    when "list planets"
      puts solar_system.list_planets

    when "planet details"
      puts "What planet would you like to know about?".colorize(:blue)
      puts "#{solar_system.list_planets}".colorize(:cyan)
      curious_planet = gets.chomp
      curious_planet_answers = solar_system.find_planet_by_name(curious_planet)
      # in case find_planet_by_name returns nil
      puts curious_planet_answers.summary if curious_planet_answers

    when "add planet"
      puts "What is the name of this new planet?".colorize(:blue)
      new_name = gets.chomp
      puts "What color is the new planet?".colorize(:blue)
      new_color = gets.chomp
      puts "What is the mass of the new planet in kg?".colorize(:blue)
      new_mass = gets.chomp.to_f
      puts "How far is the new planet from #{solar_system.star_name} in km?".colorize(:blue)
      new_distance = gets.chomp.to_f
      puts "What is a fun fact about the new planet?".colorize(:blue)
      new_fact = gets.chomp
      new_planet = Planet.new(new_name, new_color, new_mass, new_distance, new_fact)
      solar_system.add_planet(new_planet)

    when "find distance"
      puts "what is the planet you are starting from?".colorize(:blue)
      planet1 = gets.chomp
      puts "what is the planet you are ending on?".colorize(:blue)
      planet2 = gets.chomp
      puts solar_system.distance_between(planet1, planet2)

    else
      puts "that is not a valid selection".colorize(:blue)
    end

    selection = prompt_user
  end
end

main