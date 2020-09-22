# Wave (1)
# Define class Planet (W1.1)
class Planet
  # Add readers
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_facts

  # Add constructor which take 5 parameters (W1.2)
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg.to_f
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  # Define a method that return the summary of a given planet(W1.4)
  def summary
    summary = "
      - Name: #{@name}
      - Color: #{@color}
      - Mass (in kg): #{@mass_kg}
      - Distance From Sun (in km): #{@distance_from_sun_km}
      - Fun Fact: #{@fun_fact}"

    #returns summary as string
    return summary
  end
end
