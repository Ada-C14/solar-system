class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # add planet and prevent duplicate entries.
  def add_planet(planet)
      planets << planet
  end

  def list_planets
    planets_string = "Planets orbiting #{star_name}"
    planets.each_with_index do |planet, i|
      planets_string += "\n#{i + 1}.\t#{planet.name}"
    end
    return planets_string
  end

  # takes a planet name (string) and returns planet object if available in planets array or false if not
  def find_planet_by_name(planet_name)
    found_planet = planets.select {|planet_object| planet_object.name.downcase == planet_name.downcase}
    found_planet.empty? ? "This planet does not exist in the Solar System" : found_planet.first
  end

  def distance_between(planet_1, planet_2)
    # get the planet objects from find_planet_by_name method
    planet_1 = find_planet_by_name(planet_1)
    planet_2 = find_planet_by_name(planet_2)
    # check if planet objects are truthy
    if planet_1.is_a?(Planet) && planet_2.is_a?(Planet)
      return "The distance between #{planet_1.name} and #{planet_2.name} is #{(planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs} km"
    else
      return "Both planets must exist within the Solar System."
    end
  end
end
