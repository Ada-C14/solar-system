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

  # addtl accessors
  # returns formatted summary of planet info.
  def summary
    # generally, we don't want to put puts statements in class/instance methods.
    # puts doesn't return a string that we could potentially need to use in something else.
    # puts will also risk giving us unwanted output in some cases.
    return "SUMMARY OF PLANET\nPLANET: #{@name}\nCOLOR: #{@color}\nMASS (KG): #{@mass_kg}\nDISTANCE FROM SUN (KM): #{@distance_from_sun_km}\nFUN FACT: #{@fun_fact}"
  end
end
