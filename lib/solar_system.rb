# Christabel Sebastian
# Last updated, Sept 20. 2020
# Ada C14
# Solar System
# sources: https://stackoverflow.com/questions/3724913/how-to-capitalize-the-first-letter-in-a-string-in-ruby

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    raise ArgumentError, "Cannot add planet information; incorrect data-type." if planet.class != Planet

    raise ArgumentError, "There is already a planet in this solar system by that name." if find_planet_by_name(planet.name)

    @planets << planet
  end

  def list_planets
    raise ArgumentError, "There are no known planets in this solar system." if planets.empty?

    return @planets.map{ |planet| planet.name }.flatten.join(', ')
  end

  def find_planet_by_name(planet_name)
    #titleize the search term
    planet_name = planet_name.split(' ').map(&:capitalize).join(' ')

    planet_search = @planets.find { |planet| planet.name == planet_name }
    return planet_search
  end

  #This method assumes all planets are in a straight line lined up with the sun
  def distance_between(planet1, planet2)
    planet1_distance = find_planet_by_name(planet1).distance_from_sun_km
    planet2_distance = find_planet_by_name(planet2).distance_from_sun_km
    return abs(planet1_distance - planet2_distance)
  end
end