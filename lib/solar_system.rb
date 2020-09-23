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
    str_planets = "Planets orbiting #{self.star_name}:"
    @planets.each_with_index do |planet, i|
      str_planets += "\n#{i+1}.  #{planet.name}"
    end
    return str_planets
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet_name.upcase == planet.name.upcase
        return planet
      end
    end
    return nil
  end

  def distance_between(planet_name1, planet_name2)
    planet1 = find_planet_by_name(planet_name1)
    planet2 = find_planet_by_name(planet_name2)

    return (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs
  end

  end