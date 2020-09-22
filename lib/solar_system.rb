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
    list = ""
    @planets.each_with_index do |planet, i|
      list << "#{ i + 1 }. #{planet.name}\n"
    end

    return "Planets orbiting #{@star_name}\n#{list}"
  end

  def find_planet_by_name(planet_name) # takes the name of a planet as a string
    @planets.each do |planet|
      return planet if planet_name.downcase == planet.name.downcase
    end

    return "#{planet_name} does not match any planets in #{@star_name}'s solar system." if found_planet.nil?
  end

  def distance_between(planet1_name, planet2_name) # takes the names of planets as strings
    planet1 = find_planet_by_name(planet1_name)
    planet2 = find_planet_by_name(planet2_name)

    distance = (planet1.distance_from_sun_km - planet2.distance_from_sun_km)
    return -distance if distance.negative?

    return distance
  end
end