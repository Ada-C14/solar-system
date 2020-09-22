
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
    counter = 1
    @planets.each do |planet|
      "Planets orbiting #{@star_name}:\n#{counter}. #{planet}\n"
      counter += 1
    end
  end






end