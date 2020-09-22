class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    if mass_kg < 0
      raise ArgumentError, 'Invalid mass'
    end

    if distance_from_sun_km < 0
      raise ArgumentError, 'Invalid distance'
    end
  end

  def summary
    return "#{@name} is a #{@color} planet with a mass of #{@mass_kg}kg and a distance of #{@distance_from_sun_km}km from the sun. #{@fun_fact}"
    # return "Planet Name: #{@name}\nColor: #{@color}\nMass: #{@mass_kg} kg\nDistance from the Sun: #{@distance_from_sun_km} km\nFun fact: #{@fun_fact}\n\n"
  end
end