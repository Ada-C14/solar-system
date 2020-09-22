# Christabel Sebastian
# Last updated, Sept 21. 2020
# Ada C14
# Solar System
# sources: https://stackoverflow.com/questions/3724913/how-to-capitalize-the-first-letter-in-a-string-in-ruby

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name.split(' ').map(&:capitalize).join(' ')
    @planets = []
  end

  def add_planet(planet)
    raise ArgumentError, "Cannot add planet information; incorrect data-type." if planet.class != Planet

    raise ArgumentError, "There is already a planet in this solar system by that name." if find_planet_by_name(planet.name)

    @planets << planet
  end

  def list_planets
    raise ArgumentError, "There are no known planets in this solar system." if planets.empty?

    planets_list = []
    @planets.each_with_index{ |planet, index| planets_list << "#{index + 1}. #{planet.name}" }

    return "Planets orbiting #{@star_name}:\n#{planets_list.flatten.join("\n")}"
  end

  def find_planet_by_name(planet_name)
    #titleize the search term
    planet_name = planet_name.split(' ').map(&:capitalize).join(' ')

    return @planets.find { |planet| planet.name == planet_name }
  end

  #This method assumes all planets are in a straight line lined up with the sun
  def distance_between(planet1, planet2)
    planet1_distance = find_planet_by_name(planet1).distance_from_sun_km
    planet2_distance = find_planet_by_name(planet2).distance_from_sun_km
    return (planet1_distance - planet2_distance).abs
  end
end