require_relative 'planet'
require 'colorize'
require 'colorized_string'

class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list = "\nPlanets orbiting #{star_name}:\n".colorize(:green)
    @planets.each_with_index do |planet, index|
      index += 1
      list += "#{index}. #{planet.name}\n"
    end
    return list
    end

  def find_planet_by_name(input_name)
   @planets.each do |single_planet|
     return single_planet.summary if single_planet.name.downcase == input_name.downcase
     end
      return "\nSorry,this planet is in the process of being created many light years away and cannot be located just yet.".upcase.colorize(:red)
  end

  def add_new_planet
    puts "It's a-me, Mario! Add some information about your new planet:"
    puts "name:"
    new_name = gets.chomp
    puts "color:"
    new_color = gets.chomp
    puts "mass_kg (integer only - do not spell out number):"
    new_mass = gets.chomp.to_i
    if new_mass < 1
      raise ArgumentError, 'Mass must be an integer and it must be greater than 0.'.colorize(:yellow)
    end
    puts "distance from sun (integer only - do not spell out number):"
    new_distance = gets.chomp.to_i
    if new_distance < 1
      raise ArgumentError, "Distance from sun must be greater than 0.".colorize(:yellow)
    end
    puts "What is your fun-a fact?"
    new_fun_fact = gets.chomp

    new_name = Planet.new(new_name,new_color,new_mass,new_distance,new_fun_fact)
    add_planet(new_name)
  end
end
