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
    return "Planets orbiting #{@star_name}: \n 1. #{@planets[0].name} \n 2. #{@planets[1].name} \n 3. #{@planets[2].name}"
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet.name == planet_name
        return planet
      end
    end
  end
end