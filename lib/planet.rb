
class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name:, color:, mass_kg:, distance_from_sun_km:, fun_fact:)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    raise ArgumentError.new("distance_from_sun_km must be greater than zero") if @distance_from_sun_km  <= 0
    raise ArgumentError.new("mass_kg") if @mass_kg  <= 0
  end

  def summary
    return "#{name} is #{color}, weighs #{mass_kg} kg, and is #{distance_from_sun_km} km from the sun.\nFun fact about #{name}: #{fun_fact}"
  end

end