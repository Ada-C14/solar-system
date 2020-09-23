
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
    list = "Planets orbiting #{@star_name}\n"
    @planets.each_with_index {|planet, i| list << "#{i+1}. #{planet.name}\n"}
    return list
   end

  #is this how this one looks like?
   def find_my_planet_by_name(planet)#.downcase
   first_found_planet = planets.find do |planet|
     planet.name.upcase == query.upcase
   end
   return first_found_planet
     return planet

   end

end
