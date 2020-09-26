#Wave 2
# Create a new class called SolarSystem Wave 1, Part 1
class SolarSystem
  attr_reader :star_name, :planets

  #create a constructor with a parameter star_name
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  #create a method to add planet with a parameter called planet --> Wave 2, Part 2
  def add_planets(planet)
    @planets << planet
  end

  #Create a method to return a string with a list of planets --> Wave 2, Part 3
  def list_planets
    list_string = "Planets orbiting #{star_name}\n"
    @planets.each_with_index do |planet,i|
      list_string += "\n#{i + 1}.#{planet.name}"
    end
    return list_string
  end

  #Create a method to find the planet by name Wave 2, Part 5

  def find_planet_by_name(planet_name)
    planet_name = planet_name.upcase
    found_planet =planets.find {|planet|planet.name.upcase == planet_name.upcase}
    raise ArgumentError, "#{planet_name} is not in solar system"
    return found_planet
  end
  end