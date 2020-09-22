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
    result = "Planets orbiting #{@star_name}\n"
    @planets.each_with_index do |planet, index|
      result += "#{index + 1}. #{planet.name}\n"
    end
    return result
  end

  def find_planet_by_name(planet_name)
    return @planets.find {|planet| planet_name.downcase == planet.name.downcase}
  end
end