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
    summary_list = "Planets orbiting <#{@star_name}>\n"
    @planets.each.with_index(1) { |planet, idx| summary_list << "#{idx}. #{planet.name}\n"}
    return summary_list
  end

  def check_valid_planet(planet)
    @planets.each do |one_planet|
      if one_planet.name.upcase == planet.upcase
        return one_planet
      end
    end
    raise ArgumentError, "#{planet} is not part of the given solar system."
  end

  def find_planet_by_name(planet)
    found_planet = check_valid_planet(planet)
    return found_planet
  end

  def distance_between(planet_1, planet_2)
    planet_1 = check_valid_planet(planet_1)
    planet_2 = check_valid_planet(planet_2)
    distance_bw_planets = (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
    return distance_bw_planets
  end
end