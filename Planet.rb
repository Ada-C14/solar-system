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
    return "Planet name: #{@name}. #{@name.capitalize}'s color is #{@color}. This planet's mass is #{@mass_kg} and #{@distance_from_sun_km} million km away from the sun. An interesting fact is that #{@fun_fact}."
  end
end
