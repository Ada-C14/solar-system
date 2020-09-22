class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    raise ArgumentError.new("mass_kg has to be greater than 0") if mass_kg <= 0 || distance_from_sun_km <= 0
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "name: #{name}, color: #{color}, mass: #{mass_kg} kg, distance from the sun: #{distance_from_sun_km} km, fun fact: #{fun_fact}"
  end


end