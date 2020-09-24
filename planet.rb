
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  #constructor
  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_factc

  end

  attr_reader :name
  attr_reader :color
  attr_reader :mass_kg
  attr_reader :distance_from_sun_km
  attr_reader :fun_fact


  def summary
    return "Planet #{name} is the color #{color} and it weights #{mass_kg}. and its #{distance_from_sun_km} km away from the sun. Here's a fun fact: #{fun_fact}."
  end
end