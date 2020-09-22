class SolarSystem
  include Math

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(new_planet)
    @planets << new_planet
  end

  def list_planets
    i = 0
    planets = ""

    @planets.each do |planet|
      planets += "    #{i + 1}. #{planet.name.capitalize}\n"
      i += 1
    end

    return "\n    Planets orbiting #{@star_name.capitalize}:\n"\
           "#{planets}"
  end

  def find_planet_by_name(planet_name)
    planet_name = planet_name.downcase

    @planets.each do |planet|
      if planet.name.downcase == planet_name
        return planet
      end
    end
  end

  def distance_between(planet1_name, planet2_name)
    return (planet1_name.distance_from_sun_km - planet2_name.distance_from_sun_km).abs
  end

end