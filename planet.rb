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
    return "Name: #{@name}\n Color: #{@colorcolor}\n Mass: #{@mass_kgmass_kg}\n Distance from the Sun: #{@distance_from_sun_km}\n Fun Fact: #{@fun_fact}"
  end

  earth = Planet.new('Earth', "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")

  pp earth






end







puts earth.name
puts earth.fun_fact
# earth.color = "pink"