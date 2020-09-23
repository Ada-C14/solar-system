class Planet
  #info about single planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  # readable from outside the class, but not writable.
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "#{@name} is a #{@color}. it has a mass of #{@mass_kg} - distance from sun: #{@distance_from_sun_km} - fun fact: #{@fun_fact}"
  end
end

# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# puts earth.name
# puts earth.fun_fact

