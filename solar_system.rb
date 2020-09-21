

class SolarSystem
  # readable, but not writable
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  # output a string object with the star name and the planets in it
  def list_planets
    planet_string = "Planets orbiting #{@star_name} \n"
    @planets.each_with_index do |planet, index|
      planet_string += "#{index+1}. #{planet.name}"
    end
    return planet_string
  end

  def find_planet_by_name(planet_name)
    return @planets.find {|planet| planet.name == planet_name.capitalize}
  end

end