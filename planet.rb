
attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{name} is a #{color} planet in our solar system. It has a mass of #{mass_kg} and is #{distance_from_sun_km}km from the sun. A fun fact is #{fun_fact}."
  end
end