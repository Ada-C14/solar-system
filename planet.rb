class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    raise ArgumentError, 'Mass must be greater than 0.' if mass_kg < 0
    @distance_from_sun_km = distance_from_sun_km
    raise ArgumentError, 'Distance from sun must be greater than 0.' if distance_from_sun_km < 0
    @fun_fact = fun_fact
  end

  def summary
    summary = " Name: #{@name}\n Color: #{@color}\n Mass: #{@mass_kg}\n Distance from the Sun:#{@distance_from_sun_km}\n Fun Fact: #{@fun_fact}"
    return summary
  end

end

