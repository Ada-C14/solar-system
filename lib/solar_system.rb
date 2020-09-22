require_relative 'planet'

class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)

    @star_name = star_name
    @planets = []

  end

  def add_planet(planet)
    raise ArgumentError.new("Can only add objects of class Planet") if !planet.instance_of? Planet
    @planets << planet
  end


end