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
    summary_list = "Planets orbiting <#{@star_name}>"
    @planets.each.with_index(1) { |planet, idx| summary_list << "#{idx}. #{planet.capitalize}\n"}
    return summary_list
  end
end