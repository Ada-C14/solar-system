
class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def SolarSystem(add_planet)

  end

  def SolarSystem(list_planets)
    counter = 1
    list_planets.each do |planet|
      return
        "Planets orbiting #{star_name}\n #{counter}. #{planet}\n"
    counter += 1
    end
  end




end