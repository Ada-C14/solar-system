# frozen_string_literal: true
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
    planets_list = "Planets orbiting #{@star_name}:"
    @planets.each_with_index do |planet, index|
      planets_list += "\n#{index + 1}. #{planet.name}"
    end
    return planets_list
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      if planet.name.downcase == name.downcase
        return planet
      end
    end
    raise ArgumentError, "#{name} is not in the list"
  end
end