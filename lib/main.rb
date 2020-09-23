require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = create_solar_system

  puts "Enter what you would you like to do\nList Planets\nPlanet Details\nAdd Planet\nExit"

  while control_loop(gets.chomp, solar_system) != 'exit'
    puts "Enter what you would you like to do\nList Planets\nPlanet Details\nAdd Planet\nExit"
  end
end

def create_solar_system
  return SolarSystem.new('Alpha Centauri').add_planet(Planet.new(name: "LV-426", mass_kg: 50000, fun_fact: "Here be Xenomorphs", distance_from_sun_km: 333, color: 'Grey'))
end

def control_loop(thing_to_do, solar_system)
  case thing_to_do.downcase

  when 'exit'
    return thing_to_do
  when 'list planets'
    puts solar_system.list_planets
  when 'planet details'
    choose_planet(solar_system)
  when 'add planet'
    add_planet(solar_system)
  else
    puts "Please choose a valid option"
  end
end

def choose_planet(solar_system)
  puts "Which planet would you like to know about?"

  planet = gets.chomp
  if (solar_system.find_planet_by_name(planet) == nil)
    puts "Planet cannot be found"
  else
    puts solar_system.find_planet_by_name(planet).summary
  end
end

def add_planet(solar_system)
  planet_facts = {name: nil, mass_kg: nil, fun_fact: nil, distance_from_sun_km: nil, color: nil}

  planet_facts.each_key do |info_type|
    puts "Please enter the planet's #{info_type.to_s.gsub('_', ' ')}"
    planet_facts[info_type] = gets.chomp
  end
  solar_system.add_planet(Planet.new(name: planet_facts[:name], mass_kg: planet_facts[:mass_kg].to_f, fun_fact: planet_facts[:fun_fact], distance_from_sun_km: planet_facts[:distance_from_sun_km].to_f, color: planet_facts[:color]))
end
main