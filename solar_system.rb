require_relative 'planet'

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
    list = "\nPlanets orbiting #{star_name}:\n"
    @planets.each_with_index do |planet, index|
      index += 1
      list += "#{index}. #{planet.name}\n"
    end
    return list
    end

  def find_planet_by_name(input_name)
   @planets.each do |single_planet|
     if single_planet.name.downcase == input_name.downcase
       return single_planet.summary
     end
     end
      return "Sorry,this planet is in the process of being created many light years away and cannot be located just yet."
  end

  def add_new_planet
    puts "It's a-me, Mario! Add some information about your new planet:"
    puts "name:"
    new_name = gets.chomp
    puts "color:"
    new_color = gets.chomp
    puts "mass_kg (integer only):"
    new_mass = gets.chomp.to_i
    puts "distance from sun (must be integer in km):"
    new_distance = gets.chomp.to_i
    puts "What is your fun-a fact?"
    new_fun_fact = gets.chomp

    new_name = Planet.new(new_name,new_color,new_mass,new_distance,new_fun_fact)
    add_planet(new_name)
  end
end
