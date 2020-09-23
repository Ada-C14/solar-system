#wave 1
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
    "#{name} is #{color}, has a mass of #{mass_kg} kg and is #{distance_from_sun_km}
    away from the sun. Fun fact: #{fun_fact}"
  end

end
