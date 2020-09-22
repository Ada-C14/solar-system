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
    list = "Planets orbiting #{@star_name}"
    @planets.each_with_index { |p, i| list += "\n#{i + 1}.\t#{p.name}" }
    return list
  end

  def find_planet_by_name(name)
    found_planet = Planet.new(1, 1, 1, 1, 1)
    @planets.each {|p| found_planet = p if p.name == name.capitalize}
    return found_planet


  end



  def add_a_planet

    puts "What's the name of your planet?"
    name = gets.chomp.capitalize
    puts "What's the color of the planet?"
    color = gets.chomp.downcase
    puts "What's the mass in kg?"
    mass = gets.chomp.to_i
    puts "What's the distance from sun in km?"
    distance = gets.chomp.to_i
    puts "Any fun fact about #{name}?"
    funfact = gets.chomp

    new_planet = Planet.new(name, color, mass, distance, funfact)
    add_planet(new_planet)
    puts "#{new_planet.name} has been added to Solar System."
    return new_planet
  end


end

