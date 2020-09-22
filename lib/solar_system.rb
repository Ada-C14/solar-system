class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

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

  def find_planet_by_name(planet_name)
    found_planet = planets.select {|planet| planet.name.downcase == planet_name.downcase}
    found_planet.empty? ? "Cannot find #{planet_name}" : found_planet.first
  end

end
