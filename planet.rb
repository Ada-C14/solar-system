#each instance of this class will keep track of information about a single planet

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    # if @mass_kg < 0 ||  @distance_from_sun_km < 0
    #   raise ArgumentError, "Invalid Entry"
    # end
  end

  def summary
    #This method should return (not puts) a string containing a nicely-formatted description of the planet.
    # Exercise your summary method in the main method.
    description = "This #{@name} with the color #{@color} has a mass of #{@mass_kg} and is #{@distance_from_sun_km}from
    the sun. A fun fact about it is: #{@fun_fact}"
    return description
  end

end

