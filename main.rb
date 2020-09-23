require_relative 'lib/planet'
require_relative 'lib/solar_system'

def main
  # puts "Wave 1"
  # earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  # puts earth.fun_fact
  # pluto = Planet.new('Pluto', 'unknown', 5.972e24, 1.496e8, 'Unknown')
  # puts pluto.name
  # puts earth.summary
  #
  # puts "Wave 2"
  # solar_system = SolarSystem.new('Sol')
  # solar_system.add_planet(earth)
  # solar_system.add_planet(pluto)
  #
  # list = solar_system.list_planets
  # puts list
  #
  # found_planet = solar_system.find_planet_by_name('Earth')
  # puts "This is the planet that was found: #{found_planet}"
  # puts found_planet.summary


  puts "Wave 3"
  # 1. Create a `SolarSystem` and add some `Planet`s
  puts "What would you like to name your new solar system?"
  star_name = gets.chomp
  new_system = SolarSystem.new(star_name)
  puts "Your new solar system is now called", new_system.star_name
  # 1. Enter a control loop that repeatedly asks the user what to do next. The two options at this point are `list planets` and `exit`.
  continue = 1
  until continue == 2
    puts "Please choose a number: [1] List Planets, or [2] Exit"
    continue = gets.chomp.to_i
  end
  # Remember that you've already implemented listing planets - you should be able to call that method rather than recreating the logic here.
  #
  # 1. Add a `planet details` option to the control loop. When the user picks this option, the program should should call a separate method that will:
  #     1. Ask them for the name of the planet they wish to learn about
  #     1. Display details for that planet
  #
  #     Again, you should reuse a method you've already built to handle formatting the planet information.
  #
  # 1. Add an `add planet` option to the control loop. When the user picks this option, the program should call a separate method that will:
  #     1. Ask the user for details about the planet
  #     1. Create a new instance of `Planet` with that info
  #     1. Add it to the `SolarSystem`
  #
  #     The new planet should now appear in the list of planets, and the user should be able to see its details.


end

main