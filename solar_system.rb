#wave2
#SolarSystem is responsible for keeping track of a collection of instances of Planet.
class SolarSystem # has to have a star and the planets
   attr_reader :star_name, :planet

   def initialize(star_name)
    @star_name = star_name # the sun
    @planets = [] #will store an array of planets
   end

  # will take an instance of Planet as a parameter and add it to the list of planets.
   def add_planet(planet)
    @planets << planet
   end

  # will return (not puts) a string containing a list of all the planets in the system.
   def list_planets
    list = "Planets orbiting #{@star_name}:\n"
    @planets.each do |planet|
      list += "* #{planet.name}\n"
    end
    list += "\n"
    return list
   end

  #the find_planet_by_name returns the correct instance of Planet
  # Note: We can use planets, @planets, or self.planets
   def find_my_planet_by_name(found)#.downcase
   first_found_planet = planets.find do |planet|
     planet.name.upcase == found.upcase
   end
   return first_found_planet

  end

end
