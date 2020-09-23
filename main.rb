require_relative "Planet"
require_relative "Solar_system"

def main
  # WAVE 1
  puts "-------------------------------------------- WAVE 1"
  mercury = Planet.new("Mercury", "dark grey", 3.28e23,6.94e7, "Not only is Mercury the smallest planet, it is also shrinking!")
  venus = Planet.new("Venus", "white/blue", 4.87e24, 1.08e8, "Venus is the brightest planet in its solar system.")
  earth = Planet.new("Earth", "blue/green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red/orange", 6.39e23, 2.11e8, "Mars has frozen water.")
  jupiter = Planet.new("Jupiter", "yellow", 1.90e27, 7.68e8, "Jupiter has 67 moons.")
  saturn = Planet.new("Saturn", "pale yellow", 1.99e27, 1.49e9,"Saturn's rings are made of ice, dust, and rock." )
  uranus = Planet.new("Uranus", "blue/green", 8.68e25, 2.96e9, "Uranus hits the coldest temperatures of its solar system.")
  neptune = Planet.new("Neptune", "blue", 1.02e26, 4.48e9, "Only one spacecraft from earth has flown by Neptune.")
  pluto = Planet.new("Pluto", "brown", 1.31e22, 5.95e9, "Pluto is only about half the width of the United States.")

  puts mercury.summary
  puts venus.summary
  puts earth.summary
  puts mars.summary
  puts jupiter.summary
  puts saturn.summary
  puts uranus. summary
  puts neptune.summary
  puts pluto.summary



  # WAVE 2
  puts "-------------------------------------------- WAVE 2"
  solar_system = Solar_system.new("Sun")
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)
  solar_system.add_planet(pluto)


  puts solar_system.list_planets

  puts solar_system.find_planet_by_name("Random Planet")
  found_planet = solar_system.find_planet_by_name("earth")
  puts found_planet.summary
  puts solar_system.find_planet_by_name("eArth")

  # WAVE 3
  puts "-------------------------------------------- WAVE 3"
  other_system = Solar_system.new("Estrella")
  planet_S = Planet.new("Planet S", "pink", 2.17e23, 2.5e15, "Aliens have been spotted on Planet S.")
  other_system.add_planet(planet_S)

  exit_wanted = false
  while exit_wanted == false
    puts "What do you want to do next? Enter: 'list planets', 'planet details', 'add planet', or 'exit'."
    input = gets.chomp
    if input.downcase.include?("list")
      puts other_system.list_planets
      exit_wanted = false
    elsif input.downcase.include?("details")
      puts "Which planet would you like the details on?"
      which_planet = gets.chomp
      puts (other_system.find_planet_by_name(which_planet)).summary
    elsif input.downcase.include?("add")
      puts "Enter the name of the planet you would like to add."
      name_new_planet = gets.chomp
      puts "Enter its color."
      color = gets.chomp
      puts "Enter its mass in Kg."
      mass = gets.chomp
      puts "Enter its distance from the star in Km."
      distance = gets.chomp
      puts "Enter a fun fact about the planet."
      fun = gets.chomp
      new_planet = Planet.new(name_new_planet, color, mass, distance, fun)
      other_system.add_planet(new_planet)
      puts "#{new_planet}.capitalize has been added to the list."
    else
      exit_wanted = true
      #input.downcase == "exit" ? (exit_wanted = true ) : (exit_wanted = false)
    end
  end


end

main