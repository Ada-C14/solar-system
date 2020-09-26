#Wave 1 - Create a class Planet
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  #Create a constructor which takes 5 parameters Wave 1, Part 2
  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

  end

  #Create a method that returns a string with the summary of a planet Wave 4 - Part 4
  def summary
    summary = "Planet #{name} is the color #{color} and it weights #{mass_kg}. and its #{distance_from_sun_km} km away from the sun. Here's a fun fact: #{fun_fact}."
    return summary
  end
end