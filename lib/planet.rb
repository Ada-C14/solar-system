class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError, "mass_kg and distance_from_sun_km have to be greater than 0" if mass_kg <= 0 || distance_from_sun_km <= 0
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "name: #{name}, color: #{color}, mass: #{mass_kg} kg, distance from the sun: #{distance_from_sun_km} km, fun fact: #{fun_fact}"
  end


end