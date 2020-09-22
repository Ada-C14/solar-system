class SolarSystem

  attr_reader :planets, :star_name
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end
  def list_planets
    result = "Planets orbiting #{star_name} \n"
    @planets.each_with_index do |planet, index|
      result +=  "#{index + 1}. #{planet.name} \n"
    end
    return result
  end
end