
class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planets(planet)
    @planets << planet
  end

  def list_planets
    planet_number = 1
    list =
        @planets.each do |planet|
      planet_number += 1
    end
    return list
    end
  end
end