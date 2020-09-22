require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")

  trill = Planet.new("Trill", "Green", 1000, 1000, "Jadzia's home")
  solar_system.add_planet(trill)

  cardassia = Planet.new("Cardassia", "Brown", 2000, 2000, "Garak's home")
  solar_system.add_planet(cardassia)

  bajor = Planet.new("Bajor", "Red", 3000, 3000, "Kira's home")
  solar_system.add_planet(bajor)

  list = solar_system.list_planets
  puts list
  puts solar_system.distance_between("Cardassia", "Bajor")
  #
  # puts "what is the star in your solar system?"
  # star_name = gets.chomp
  # solar_system = SolarSystem.new(star_name)
  # 2.times do
  #   puts "what planet would you like to add?"
  #   name = gets.chomp
  #   puts "what color is the planet?"
  #   color = gets.chomp
  #   puts "what is the mass of the planet in kg?"
  #   mass_kg = gets.chomp.to_f
  #   puts "how far is the planet from its sun in km?"
  #   distance_from_sun_km = gets.chomp.to_f
  #   puts "what's something neat about the planet?"
  #   fun_fact = gets.chomp
  #   planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  #   puts "#{planet.name} is #{planet.color}"
  #   solar_system.add_planet(planet)
  # end
  # puts solar_system.list_planets
  # return solar_system
end

main


