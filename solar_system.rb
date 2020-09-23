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
    planets_output = "Planets orbiting #{@star_name}\n"
    @planets.each_with_index {|planet, i| planets_output += "#{i+1}. #{planet.name}\n"}
    return planets_output
  end

  def find_planet_by_name(find_planet)
    @planets.each {|planet| return planet if planet.name.downcase == find_planet.downcase}
  end
end