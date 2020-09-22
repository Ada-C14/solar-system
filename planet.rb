
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError.new('Must be a number greater than zero') if mass_kg < 0 || distance_from_sun_km < 0
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Summary for #{@name}:\nColor: #{@color}\nMass: #{@mass_kg} kg\nAverage distance from Sun: #{@distance_from_sun_km}km\nFun fact: #{@fun_fact}"
  end
end