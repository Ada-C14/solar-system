class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact, :inhabited

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact, inhabited)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    @inhabited = inhabited
  end

  def summary
    return "#{name} is a #{color} planet #{distance_from_sun_km} away from the sun. Rumor has it its inhabitants are called #{inhabited}, and #{fun_fact}! It is a healthy #{mass_kg} kilograms."
  end
end

