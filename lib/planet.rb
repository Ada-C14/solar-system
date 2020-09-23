class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    #wave1 - optional // error checking
    if @mass_kg.is_a?(Float) == false && @mass_kg.is_a?(Integer) == false
      raise ArgumentError.new("Expected number, got #{@mass_kg}.")
    elsif @mass_kg < 0
      raise ArgumentError.new("Expected value greater than zero, got #{@mass_kg}.")
    end

    if @distance_from_sun_km.is_a?(Float) == false && @distance_from_sun_km.is_a?(Integer) == false
      raise ArgumentError.new("Expected number, got #{@distance_from_sun_km}.")
    elsif distance_from_sun_km < 0
      raise ArgumentError.new("Expected value greater than zero, got #{@distance_from_sun_km}.")
    end
  end

  def summary
    summary = "
     - Planet: #{@name}
     - Color: #{@color}
     - Mass (in Kg): #{@mass_kg}
     - Distance from the sun (in Km): #{@distance_from_sun_km}
     - Fun Fact: #{@fun_fact}"

    return summary
  end


end