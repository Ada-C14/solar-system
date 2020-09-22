class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)  
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{ @name } is #{ @color }, and it weights #{ @mass_kg } kg and #{ @distance_from_sun_km } km away from sun. \nThe fun fact about it: #{ @fun_fact.downcase }\n\n"
  end
end
