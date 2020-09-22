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
    @planets.each {|p| found_planet = p if p.name == name}
    return found_planet


  end

end

