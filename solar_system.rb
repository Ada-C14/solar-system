require_relative 'planet'

class SolarSystem

  attr_reader :star_name, :planets

  attr_accessor :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  #takes instance of Planet as parameter?
  def add_planet(planet_instance)
    @planets << planet_instance
  end
  # return string drop down list of planets
  def list_planets
    @planets_list = ["Planets orbiting #{star_name}:\n"]
    i = 0
    @planets.length.times do
      list_item = "#{i + 1}. #{@planets[i].name}\n"
      @planets_list << list_item
      i += 1
    end
    return @planets_list
  end

  def find_planet_by_name(planet_name)

    @planets.each do |planet|
      if planet_name == planet.name
        return planet.summary
      end
      raise ArgumentError.new("Hmm..that planet isn't in this solar system.")
    end
  end

end
