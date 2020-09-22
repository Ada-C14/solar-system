
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
    planet_list = "Planets Orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, index|
      planet_list << "#{index + 1}. #{planet.name}\n"
    end
    return planet_list
  end

  def find_planet_by_name(string)
    @planets.each do |planet|
      return planet if planet.name == string.capitalize
    end
    raise ArgumentError.new('No planet by that name found!')
  end

  # I don't understand how 'assume that planets are lined up in a straight line'
  # is a simplifying assumption because two objects are always in a straight line
  # relative to each other in a cartesian system. Maybe this is supposed to mean
  # they're lined up in a line relative to each other AND the star they orbit?
  # But in this case there are multiple orientations the planets could take relative
  # to the star, even without accounting for orbital eccentricity. I'm going to make
  # a method that calculates the average difference between two planets' average
  # ORBITAL DISTANCE as estimated by the distance_from_sun variable because I'm
  # pretty sure this is what the assumption is getting at, and because this is an
  # optional and it doesn't count anyway.

  def average_orbit_delta(planet1, planet2)
    # This method calculates the average difference in average orbital distance from
    # their shared star between planet1 and planet2. A positive result means planet1
    # is further from the star than planet2. A negative result means the opposite

    first_planet = self.find_planet_by_name(planet1)
    second_planet = self.find_planet_by_name(planet2)

    planet1_avg_orbit = first_planet.distance_from_sun_km
    planet2_avg_orbit = second_planet.distance_from_sun_km

    return planet1_avg_orbit - planet2_avg_orbit
  end
end