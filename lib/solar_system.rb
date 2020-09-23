class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = %w[ Mercury Venus Earth Mars Jupiter]
  end

  def add_planet(planet_instance)
    @planets << planet_instance
  end

  #     1. Create a method `SolarSystem#list_planets`, which will _return_ (not `puts`) a string containing a list of all the planets in the system. The string should be formatted in this style:
  #
  #                                                                                                                                                                                             ```bash
  #   Planets orbiting <star name>
  #   1.  Mercury
  #   2.  Venus
  #   3.  Earth
  #   4.  Mars
  #   5.  Jupiter
  #   ```

  def list_planets
    #can't get index to print for some reason that I am unaware of in either solution I've tried
    # index = 0
    # return "Planets orbiting the #{star_name}", @planets.each { |planet| "\n #{index += 1}. #{planet}" }
    return "Planets orbiting the #{star_name}", @planets.each_with_index { |planet, index| "\n #{index + 1}. #{planet}" }
  end

  def find_planet_by_name(planet)
    planet = planet.downcase
    return @planets.select { |planet_name| planet_name.downcase == planet }
  end
end