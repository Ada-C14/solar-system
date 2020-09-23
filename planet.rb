class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_mil_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_mil_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_mil_km = distance_from_sun_mil_km
    @fun_fact = fun_fact
  end

  def summary
    # print "Which planet would you like to learn about? "
    # planet = gets.chomp
    return "#{@name} is a #{color} planet with a mass of #{@mass_kg}. It is #{@distance_from_sun_mil_km} million km from the sun. Did you know that #{@name} #{@fun_fact}?"
  end
end
