require_relative 'planet'
class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
    return @planets
  end

  def list_planets
    num = 1
    string_one = "Planets orbiting #{@star_name}"
    @planets.each do |i|
      string_one = string_one + "
      #{num}. #{i.name}"
    num += 1
    end
    return string_one
  end
  def find_planet_by_name(name)
    @planets.each do |planet|
      if name.downcase == planet.name.downcase
        return planet
      end
      return nil
    end

  end
end