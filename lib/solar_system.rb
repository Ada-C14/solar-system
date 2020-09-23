require_relative "planet"

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

    if list == ""
      return "...No planets found orbiting #{@star_name}"
    else
      return "Planets orbiting #{@star_name}\n#{list}"
    end
  end

  def find_planet_by_name(planet_name) # takes the name of a planet as a string
    found_planet = @planets.select do |planet|
      planet_name.downcase == planet.name.downcase
    end

    if found_planet.length == 1
      return found_planet[0]
    elsif found_planet.length == 0
      raise ArgumentError, "#{planet_name} does not match any planets in our database of #{@star_name}'s solar system."
    else
      puts "Multiple entries returned for #{planet_name}."
      return found_planet
    end
  end


  def distance_between(planet1_name, planet2_name) # takes the names of planets as strings
    planet1 = find_planet_by_name(planet1_name)
    raise ArgumentError, "Multiple entries returned for #{planet1_name}." if planet1.is_a? Array

    planet2 = find_planet_by_name(planet2_name)
    raise ArgumentError, "Multiple entries returned for #{planet2_name}." if planet2.is_a? Array

    distance = (planet1.distance_from_sun_km - planet2.distance_from_sun_km)
    return -distance if distance.negative?

    return distance
  end
end