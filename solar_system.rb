require 'pry'

class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    output = "Planets orbiting #{@star_name}:"
    @planets.each_with_index do |planet, i|
      output += " \n #{i + 1}. #{planet.name}"
    end
    return output
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet.name == planet_name
        return planet
      end
    end
  end
end