class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact, :favorite_animal, :pronoun

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact,
                 favorite_animal: "Cat", pronoun: 'Their')
    @name = name
    @color = color
    if mass_kg.to_f > 0.0
      @mass_kg= mass_kg
    else
      raise ArgumentError.new("Mass must be greater than 0")
    end
    if distance_from_sun_km.to_f > 0.0
      @distance_from_sun_km = distance_from_sun_km
    else
      raise ArgumentError.new("Distance from sun must be greater than 0")
    end
    @fun_fact = fun_fact
    @favorite_animal = favorite_animal
    @pronoun = pronoun
  end

  def summary
    begin
      string = "#{@name} is a #{Rainbow(@color).color(@color.to_sym.downcase)} planet that is "
    rescue ArgumentError
      string = "#{@name} is a #{@color} planet that is "
    end
    string << "#{@distance_from_sun_km} km from the sun and #{@mass_kg} kg in mass\n"\
    "SUPER FUN FACT: #{@fun_fact}!\n#{@pronoun} favorite animal is the #{@favorite_animal}"
    return string
  end
end

