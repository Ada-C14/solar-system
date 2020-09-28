require_relative 'planet'

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
    @more_planets = "Planets orbitiing #{star_name}:\n"
    i = 0
    @planets.each do
      planet_list = "#{i+1}. #{planets[i].name}\n"
      @more_planets << planet_list
      i += 1
    end
    return @more_planets
  end




end