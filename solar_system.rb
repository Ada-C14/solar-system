class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(new_planet)
    @planets << new_planet
  end

  def list_planets
    i = 0
    planets = ""

    @planets.each do |planet|
      planets += "    #{i + 1}. #{planet.name}\n"
      i += 1
    end

    return "\n    Planets orbiting #{@star_name.capitalize}:\n"\
           "#{planets}"
  end

  def find_planet_by_name(planet_name)
    planet_name = planet_name.downcase

    @planets.each do |planet|
      if planet.name.downcase == planet_name
        return planet
      end
    end

    return nil
  end

end