# Wave 2
# Create a new class called SolarSystem (W2.1)
class SolarSystem
  attr_reader :star_name

  # Create constructor with a parameter star_name
  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  # Create a method to add planet with a parameter named planet (W2.2)
  def add_planet(planet)
    @planets << planet
  end

  # Create a method to return a string with a list of planets(W2.3)
  def list_planets
    str = ""
    "Planets orbiting #{@star_name}"
    count = 0
    @planets.each do |planet|
      count += 1
      str += "#{count.to_s}. #{planet.name}\n"
    end
    return str
  end

  # Create a method to find_planet_by_name (W2.5)
  def find_planet_by_name(planet_name_str = "earth")
    @planets.each do |planet|
      if planet_name_str.upcase == planet.name.upcase
        return planet
      end
    end
    # Return false if planet not found
    return false
  end

  # Create a method that takes two planet names as parameters and returns the distance between them
  def distance_between(planet_name_1, planet_name_2)
    planet_1 = find_planet_by_name(planet_name_1)
    planet_2 = find_planet_by_name(planet_name_2)
    return (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
  end
end