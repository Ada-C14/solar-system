class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet.name
  end

  def list_planets
    summary_list = "Planets orbiting <#{@star_name}>\n"
    @planets.each.with_index(1) { |planet, idx| summary_list << "#{idx}. #{planet}\n"}
    return summary_list
  end
end