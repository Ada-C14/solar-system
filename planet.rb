class Alien_Type
  attr_reader :name, :color, :home, :distance_from_sun_ly, :fun_fact
  def initialize(name, color, distance_from_sun_ly, home, fun_fact)
    @name = name
    @color = color
    @distance_from_sun_ly =  distance_from_sun_ly
    @home = home
    @fun_fact = fun_fact
  end
  def summary
    return "#{name} are the color #{color}. Their #{home} is #{distance_from_sun_ly} light years away from the sun. #{fun_fact}\n\n"
  end
end

