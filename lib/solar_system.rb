class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    planets << planet
  end

  def list_planets
    planets_string = "Planets orbiting #{star_name}"
    planets.each_with_index do |planet, i|
      planets_string += "\n#{i + 1}.\t#{planet.name}"
    end
    return planets_string
  end

  # returns planet object if available in planets array
  def find_planet_by_name(planet_name)
    found_planet = planets.select {|planet| planet.name.downcase == planet_name.downcase}
    found_planet.empty? ? false : found_planet.first
  end

  def distance_between(planet_1, planet_2)
    planet_1 = find_planet_by_name(planet_1)
    planet_2 = find_planet_by_name(planet_2)
    return (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
  end
end
