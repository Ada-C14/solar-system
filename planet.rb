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
    return "Planet #{@name} is of color #{@color}, approximately weighs #{@mass_kg} kilograms, and is roughly #{@distance_from_sun_km} kilometers away from the sun. Fun fact: #{@fun_fact}"
  end

end


g