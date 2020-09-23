
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
    planet_list = "Planets Orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, index|
      planet_list << "#{index + 1}. #{planet.name}\n"
    end
    return planet_list
  end

  def find_planet_by_name(string)
    @planets.each do |planet|
      if planet.name.downcase == string.downcase
        return planet
      end
    end
  end



end
