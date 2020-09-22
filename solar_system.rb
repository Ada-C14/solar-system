
class SolarSystem
  # readable, but not writable
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    # one to many object composition with solar system to planets
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  # output a string object with the star name and the planets in it
  def list_planets
    planet_string = "Planets orbiting #{@star_name} \n"
    @planets.each_with_index do |planet, index|
      planet_string += "#{index+1}. #{planet.name} \n"
    end
    return planet_string
  end

  # takes in planet as a string
  # returns the corresponding instance of Planet
  def find_planet_by_name(planet_name)
    planet_instance = @planets.find {|planet| planet.name.downcase == planet_name.downcase}
    return planet_instance

    # what does this return? the planet name if there's such a match?
    # it returns the corresponding instance of Planet that has all the states
    # q: what should method do if there is no planet with the given name? error, tell them to type in another planet?
    # q : wht should your method do if there are multiple planets with the given name?
  end

  def distance_between(planet_1, planet_2)
    # this raised a nomethod error, why?
    #distance_apart = (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs

    planet_a = find_planet_by_name(planet_1)
    planet_b = find_planet_by_name(planet_2)
    return (planet_a.distance_from_sun_km - planet_b.distance_from_sun_km).abs

  end

end