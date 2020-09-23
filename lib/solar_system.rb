class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    my_string = "Planets orbiting <#{ @star_name }>\n"
    @planets.each_with_index do |planet, index|
      my_string += "#{ index + 1 }  #{ planet.name }\n"
    end
    return my_string
  end

  def find_planet_by_name(planet_name)
    array_planet = @planets.select { |planet| planet.name.downcase == planet_name.downcase}
    found_planet = nil
    array_planet.each { |element| found_planet = element }
    return found_planet
  end

  def distance_between(planet1, planet2)
    first_planet = find_planet_by_name(planet1)
    second_planet = find_planet_by_name(planet2)
    distance_between_two_planets = (first_planet.distance_from_sun_km - second_planet.distance_from_sun_km).abs
    return distance_between_two_planets
  end
end