# Pauline Chane (@PaulineChane)
# Ada Developers Academy C14
# Solar System Assignment - planet.rb Planet Class
# 09/23/2020

# Planet class object
class Planet
  # readable access
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg # < 0 ? mass_kg : raise ArgumentError.new "Mass entered must be ."
    @distance_from_sun_km = distance_from_sun_km # > 0 ? distance_from_sun_km : raise ArgumentError.new "Distance entered must be more than 0."
    @fun_fact = fun_fact
  end
end
