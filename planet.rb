class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color

    if (mass_kg.class == Float || mass_kg.class == Integer) && mass_kg > 0
      @mass_kg = mass_kg
    else
      raise ArgumentError, "For #{self.name}, this isn't the right type of input for mass in kg - please enter an number greater than 0."
    end

    if (distance_from_sun_km.class == Float || distance_from_sun_km.class == Integer) && distance_from_sun_km > 0
      @distance_from_sun_km = distance_from_sun_km
    else
      raise ArgumentError, "For #{self.name}, this isn't the right type of input for distance from sun in km - please enter an number greater than 0."
    end

    @fun_fact = fun_fact
  end

  def summary
    stats = "<< Summary of planet: #{name.upcase} >>\n" +
        "Color: #{color}\n" +
        "Mass (kg): #{mass_kg}\n" +
        "Distance from sun (km): #{distance_from_sun_km}\n" +
        "Fun fact: #{fun_fact}"
    return stats
  end

end