class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet_instance)
    @planets << planet_instance
  end

  def list_planets
    list = "Planets orbiting the star #{star_name}:"
    if @planets.length == 0
      list += "\nCurrently no planets orbiting the #{star_name}"
    else
      @planets.length.times do |index|
        list_item = "\n #{index + 1}. #{@planets[index].name}"
        list += list_item
      end
    end
    return list
  end

  def find_planet_by_name(planet)
    planet = planet.downcase
    planet_instance = nil
    count = 0
    @planets.length.times do |index|
      if @planets[index].name.downcase == planet
        planet_instance = @planets[index]
        count += 1
      # else
      # not sure why when the else clause is added, it defaults to this
      # planet_instance = "No planet by that name."
      end

      if count > 1
        planet_instance = 'More than one instance of this planet'
      end
    end
    return planet_instance
  end
end