class SolarSystem

  attr_reader(:star_name, :planets)

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet

    return @planets
  end

  def list_planets
    planet_num = 1
    planet_list = "Planets orbiting #{@star_name}"
    @planets.each do |planet|
      planet_list += "/n#{planet_num}. #{planet.name}"
      planet_number += 1
    end

    return planet_list
  end

end

