class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact, :favorite_animal, :pronoun

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact, favorite_animal: "Cat", pronoun: 'Their')
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    @favorite_animal = favorite_animal
    @pronoun = pronoun
  end

  def summary
    return "#{@name} is a #{@color} planet that is #{@distance_from_sun_km} km from the sun and #{@mass_kg} kg in mass"\
     + "\nSUPER FUN FACT: #{@fun_fact}!\n#{pronoun} favorite animal is the #{@favorite_animal}!"
  end
end

