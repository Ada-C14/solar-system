require_relative 'planet'

class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)

    @star_name = star_name
    @planets = []

  end

  def add_planet(planet)
    raise ArgumentError.new("Can only add objects of class Planet") if !planet.instance_of? Planet
    @planets << planet
    return self
  end

  def list_planets
    planet_list = "Planets orbiting Sol\n"
    planets.each_index {|i| planet_list+= "#{i + 1}.  #{planets[i].name}\n"}
    return planet_list
  end

  def find_planet_by_name(name)
    return planets.find { |planet| planet.name.downcase == name.downcase}
  end
end