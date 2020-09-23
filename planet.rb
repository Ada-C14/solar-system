#each instance of this class will keep track of information about a single planet

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact


    #puts "
  end

  def summary
    #This method should return (not puts) a string containing a nicely-formatted description of the planet.
    # Exercise your summary method in the main method.
    string = "#{@name}"
    return string
  end

end

