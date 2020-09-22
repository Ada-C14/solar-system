# Wave (1)
# Create class Planet (W1.1)
class Planet
  # Add readers
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # Create constructor which take 5 parameters (W1.2)
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    @found_planet = ""

  # Add error checking to your constructor (W1.5)
    if @mass_kg < 0
      raise ArgumentError "Mass kg must be greater than 0"
    end
    if @distance_from_sun_km < 0
      raise ArgumentError "Distance from the sun km must be greater than 0"
    end
  end

  # Create a method that return a string with the summary of a given planet(W1.4)
  def summary
    summary = "
      - Name: #{@name}
      - Color: #{@color}
      - Mass (in kg): #{@mass_kg}kg
      - Distance From Sun (in km): #{@distance_from_sun_km} million km.
      - Fun Fact: #{@fun_fact}"
    puts summary
  end
end
