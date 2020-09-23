class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)  
    @mass_kg = mass_kg
    raise ArgumentError.new("Mass(kg) should be a number that greater than zero: #{ @mass_kg }") if (@mass_kg.to_i != @mass_kg || @mass_kg.to_f != @mass_kg) || @mass_kg <= 0
    
    @distance_from_sun_km = distance_from_sun_km
    raise ArgumentError.new("Distance from sun (km) should be a number that greater than zero: #{ @distance_from_sun_km }") if (@distance_from_sun_km.to_i != @distance_from_sun_km || @distance_from_sun_km.to_f != @distance_from_sun_km) || @distance_from_sun_km <= 0

    @name = name
    @color = color
    @fun_fact = fun_fact
  end

  def summary
    return "#{ @name } is #{ @color }, and it weights #{ @mass_kg } kg and #{ @distance_from_sun_km } km away from sun. \nThe fun fact about it: #{ @fun_fact.downcase }\n\n"
  end
end
