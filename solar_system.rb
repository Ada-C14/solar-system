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
    planet_number = 1
    list = "Planets orbiting #{@star_name}:"
    @planets.each do |planet|
      list += "\n#{planet_number}. #{planet.name}"
      planet_number += 1
    end
    return list
  end

  def find_planet_by_name(planet_name)
    planet_name = planet_name.downcase
    found_planet = @planets.find { |planet| planet.name.downcase == planet_name}
    return found_planet
  end

end