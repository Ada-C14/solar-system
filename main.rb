require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new("Sun")
  mercury = Planet.new("Mercury", "light-grey", 3.285e23, 5.800e7, "if you lived on Mercury you'd have a birthday every 3 months.")
  venus = Planet.new("Venus", "white", 4.867e24, 1.080e8, "it is named after the Roman goddess of love and beauty.")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "it is the only planet known to support life.")
  mars = Planet.new("Mars", "red", 6.39e23, 2.066e8, "it has the highest mountain in our solar system (24km).")
  jupiter = Planet.new("Jupiter", "yellow-orange", 1.898e27, 7.680e8, "it has 79 moons.")
  saturn = Planet.new("Saturn", "yellow-brown", 5.68e26, 1.426e9, "one of Saturn's rings, discovered in 2009, could fit a billion earths.")
  uranus = Planet.new("Uranus", "blue-green", 8.681e25, 2.959e9, "it was the first planet discovered by a telescope in 1781.")
  neptune = Planet.new("Neptune", "blue", 1.024e26, 4.476e9, "a year on Neptune is equivalent to 165 years on Earth.")

  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)

  list = solar_system.list_planets

  puts "Welcome to the Solar System Program! You may: \n 1. See a list of the planets \n 2. See details for a planet \n 3. Add a planet \n 4. Exit"

  user_input = nil

  until user_input == 4
    puts
    print "Please enter a number to continue: "
    user_input = gets.chomp.to_i
      until user_input >= 1 && user_input <= 4
      print "Sorry, that is not a valid option. Please check the list and try again: "
      user_input = gets.chomp.to_i
      end

    case user_input
    when 1
      puts list
    when 2
      puts "Which planet do you want details on?"
      planet = gets.chomp
      info = solar_system.find_planet_by_name(planet)
      puts info.summary
    when 3
      puts "Add a planet by entering the following information."
      print "Name: "
      name = gets.chomp
      print "Color: "
      color = gets.chomp
      print "Mass (Kg): "
      mass = gets.chomp
      print "Distance From Sun (Km): "
      distance = gets.chomp
      print "Fun Fact: "
      fact = gets.chomp
      user_planet = Planet.new(name, color, mass, distance, fact)
      solar_system.add_planet(user_planet)
      puts "Awesome! Your planet has been added to the solar system."
    when 4
      puts "Thank you for using the Solar System Program. Goodbye!"
      exit
    end
  end
end

main
