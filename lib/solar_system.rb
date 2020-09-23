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
    str_planets = "Planets orbiting #{self.star_name}"
    @planets.each_with_index do |planet, i|
      str_planets += "\n#{i+1}.  #{planet.name}"
    end
    return str_planets
  end

  def find_planet_by_name(planet_name)
    planets.each do |planet|
      return planet if planet.name.downcase == planet_name.downcase
    end
  end

  def distance_between(planet1, planet2)
    planet_1 = find_planet_by_name(planet1)
    planet_2 = find_planet_by_name(planet2)

    return (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs
  end

  end