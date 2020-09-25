require_relative 'planet'

class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(new_planet)
    @planets << new_planet
  end

  def list_planets
    list = "The Planets orbiting our #{star_name} in our milky_way galaxy are:\n"

    planets.each do |planet|
      list += "- #{planet.name}\n"
    end
    list += "\n"
    list
  end

  def find_planet_by_name(query)

    first_found_planet = planets.find do |planet|
      planet.name.upcase == query.upcase
    end
    first_found_planet
  end

  def distance_between(planet_1, planet_2)
    # planet_1 = "mars"
    # planet_2 = "earth"
    planet_1_object = find_planet_by_name(planet_1)
    planet_2_object = find_planet_by_name(planet_2)

    (planet_2_object.distance_from_sun_km - planet_1_object.distance_from_sun_km).abs
  end

end


