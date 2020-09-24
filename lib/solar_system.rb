require_relative 'planet'

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
    output_string = "Planets orbiting the #{@star_name} \n"
    @planets.each_with_index do |planet, index|
      output_string += "#{index + 1}. #{planet.name} \n"
    end
    return output_string
  end

  def find_planet_by_name(planet_name)
    found_planet = @planets.find { |planet| planet.name == planet_name.capitalize}
    if found_planet.nil?
      raise ArgumentError.new("Sorry, that planet does not exist in this solar system.")
    end
    return found_planet
  end

  def distance_between(first_planet, second_planet)
    first_planet_distance = find_planet_by_name(first_planet).distance_from_sun_km
    second_planet_distance = find_planet_by_name(second_planet).distance_from_sun_km
    distance_between_planets = (first_planet_distance - second_planet_distance).abs
    return distance_between_planets
  end
end