#create a class called Planet.
# Each instance of this class will keep track of information about a single planet.
#
# Pay attention to the details of the class name Planet:
#
# Class names always start with a capital letter
# Class names are usually a noun or noun-phrase
# Because each instance is only one planet, we use a singular noun (Planet instead of Planets)
#
# Add a constructor to your Planet class. Your constructor should take at least these 5 parameters:
#
# name
# color
# mass_kg
# distance_from_sun_km
# fun_fact
# Each parameter should be saved in an instance variable with the same name (e.g. @color for color).
# These instance variables should be readable from outside the class, but not writable.

class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "#{self.name} Details:
    # Color: #{self.color}
    # Mass, Kg: #{self.mass_kg}
    # Distance From Sun, Kg: #{self.distance_from_sun_km}
    # Fun Fact: #{self.fun_fact}"
  end

end

