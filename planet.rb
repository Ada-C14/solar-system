
class Planet

  attr_reader :name, :color, :mass_kg, :distance_form_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    if name.class != String
      raise ArgumentError, "Invalid name, #{name}"
    end
    if color.class != String
      raise ArgumentError, "Invalid color, #{color}"
    end
    if mass_kg < 0
      raise ArgumentError, "Invalid mass, #{mass_kg}"
    end
    if distance_from_sun_km < 0
      raise ArgumentError, "Invalid distance, #{distance_from_sun_km}"
    end

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "The planet #{@name} is #{@color} and weighs in at #{@mass_kg} kilograms. Fun fact: #{@fun_fact}! #{@name} is #{@distance_from_sun_km} kilometers from our sun."
  end

endexi


