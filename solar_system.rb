require 'terminal-table'

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
    planets = []
    list = 1
    @planets.each do |planet|
      planets << ["#{list}, #{planet.name}"]
      list += 1
    end

    list_planets = Terminal::Table.new :title => "Planets orbiting #{star_name}", :rows => planets

    return list_planets
  end

end