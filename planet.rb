class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    @summary = summary
  end

  def summary
    return "#{@name} is #{@color} weighs #{@mass_kg}kg sits
            #{@distance_from_sun_km}km from the sun & FUN FACT
             it's only #{@fun_fact}!!!"
  end
end