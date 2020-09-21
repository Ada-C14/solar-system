# Christabel Sebastian
# Last updated, Sept 20. 2020
# Ada C14
# Solar System

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    raise ArgumentError, "Cannot add planet information; incorrect data-type." if planet.class != Planet
    @planets << planet
  end

  def list_planets
    raise ArgumentError, "There are no known planets in this solar system." if planets.empty?
    return @planets.join(', ')
  end

  def find_planet_by_name(planet_name)
    return @planets.find do |planet|
      planet_name.capitalize
    end

  end

end