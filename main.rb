require_relative "planet"

def main
  2.times do
    puts "what planet would you like to add?"
    name = gets.chomp
    puts "what color is the planet?"
    color = gets.chomp
    puts "what is the mass of the planet in kg?"
    mass_kg = gets.chomp.to_f
    puts "how far is the planet from its sun in km?"
    distance_from_sun_km = gets.chomp.to_f
    puts "what's something neat about the planet?"
    fun_fact = gets.chomp
    planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    puts "Welcome to #{planet.name}, where everything is #{planet.color} and the sun is #{planet.distance_from_sun_km} kms away"
  end
end

main


