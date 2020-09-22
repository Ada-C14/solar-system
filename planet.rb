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

  # raise ArgumentError "uhhh shouldn't it be greater than zero" if :mass_kg < 0
  # raise ArgumentError "Are we on the sun?" if :distance_from_sun_km < 0

  def summary
    return "#{name} is a #{color} planet #{distance_from_sun_km} kilometers away from the sun. Rumor has it its inhabitants are called #{inhabited}, and #{fun_fact}! It is a healthy #{mass_kg} kilograms."
  end
end

