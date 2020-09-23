class Planet
  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "The planet #{name.to_s.capitalize} is #{color}, weighs #{mass_kg}kg, and is #{distance_from_sun_km}km from the sun. It is also the #{fun_fact.to_s.downcase}!"
  end
end



