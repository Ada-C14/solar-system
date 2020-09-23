# Christabel Sebastian
# Last updated, Sept 21. 2020
# Ada C14
# Solar System program: main program

require_relative 'planet'
require_relative 'solar_system'


def check_input(input, max_selection_num)
  if (input.to_i == 0 && input != '0') || !(0..max_selection_num).include?(input.to_i)
    raise ArgumentError, "Invalid Selection."
  else
    return input
  end
end

def main
  earth = Planet.new(
     name: "Earth",
     color: :blue_green,
     mass_kg: 5972e24,
     distance_from_sun_km: 1.49e8,
     fun_fact: "Christabel lives here!"
  )

  mars = Planet.new(
     name: "Mars",
     color: :red,
     mass_kg: 6.417e23,
     distance_from_sun_km: 2.3e8,
     fun_fact: "Mars is red because of the iron oxide in its rocks and soil!"
  )

  neptune = Planet.new(
      name: "Neptune",
      color: :blue,
      mass_kg: 1.02e26,
      distance_from_sun_km: 4.5e9,
      fun_fact: "Sailor Neptune was queer, right?"
  )

  the_solar_system = SolarSystem.new("Sun")
  the_solar_system.add_planet(earth)
  the_solar_system.add_planet(mars)
  the_solar_system.add_planet(neptune)

  selection = nil
  while selection != '0'
    puts "What would you like to do? Enter a numerical selection: "
    puts "0. Exit."
    puts "1. List all planets in the #{the_solar_system.star_name} solar system."
    puts "2. View planet details."
    puts "3. Add another planet to the #{the_solar_system.star_name} solar system."
    puts "4. Find the distance between two planets in the #{the_solar_system.star_name} solar system."
    selection = check_input(gets.chomp, 4)

    case selection
    when "1"
      puts
      puts the_solar_system.list_planets
      puts
    when '2'
      puts
      print "Which planet would you like to learn more about? Enter the planet name: "
      planet = the_solar_system.find_planet_by_name(gets.chomp)
      puts
      if planet
        puts planet.summary
      else
        puts "No planet of that name exists in this solar system."
      end
      puts
    when '3'
      puts
      print "What is the planet name? "
      name = gets.chomp
      print "What is the planet's color? "
      color = gets.chomp
      print "What is the planet's mass, in kilograms? "
      mass = gets.chomp
      print "What is the planet's distance from the sun, in kilometers? "
      distance = gets.chomp
      print "What is a fun fact about #{name}? "
      fact = gets.chomp
      puts
      new_planet = Planet.new({
        name: name,
        color: color,
        mass_kg: mass,
        distance_from_sun_km: distance,
        fun_fact: fact
      })
      the_solar_system.add_planet(new_planet)
    when '4'
      puts
      print "To find the distance between two planets, please enter the name of the first planet: "
      planet1 = gets.chomp.split(' ').map(&:capitalize).join(' ')
      print "Please enter the name of the second planet: "
      planet2 = gets.chomp.split(' ').map(&:capitalize).join(' ')
      puts "The distance between #{planet1} and #{planet2} is #{the_solar_system.distance_between(planet1, planet2)} km (assuming a linear solar system)."
      puts
    end
  end
  puts "Thanks for visiting, goodbye!"
end


#Call the main program
main