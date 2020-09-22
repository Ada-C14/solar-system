require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'is only planet known to support life')
  mercury = Planet.new('Mercury', 'blue', 3.301e23, 6.966e7, 'is the smallest planet in our solar system and nearest to the Sun')
  venus= Planet.new('Venus', 'gold', 4.867e24, 1.078e8, 'is similar in size and structure to Earth, Venus has been called Earth\'s twin')
  mars= Planet.new('Mars', 'red-brown', 6.417e23, 2.092e8, 'has an even more active past')

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  choice = 0
  puts "Welcome to Solar System!"
  while choice != 2
    puts "**************************************"
    puts "What do you want to do next? (Enter 1, 2, 3, 4 or 5)\n1.list planets\n2.exit\n3.planet details\n4.add planet\n5.calculate distance between two planets"
    choice = gets.chomp.to_i

    case choice
    when 1
      list = solar_system.list_planets
      puts "**************************************"
      puts "#{list}"

    when 2
      puts "Exiting... Goodbye!"
      exit

    when 3
      print "Please enter the name of the planet you want to learn about => "
      planet = gets.chomp.downcase
      found_planet = solar_system.find_planet_by_name(planet)
      begin
        puts "**************************************"
        puts "#{found_planet.summary}"
      rescue NoMethodError
        puts "Sorry, the planet is not found in our system."
      end

      when 4
      puts "**************************************"
      info = ["name", "color", "mass in kg", "distance from sun in km", "one fun fact"]

      info.each_with_index do |detail, index|
        print "Please enter the #{detail} of the planet => "
        info[index] = gets.chomp
      end

      new_planet = Planet.new(info[0], info[1], info[2].to_i, info[3].to_i, info[4])

      if info[2].to_i <= 0 || info[3].to_i <= 0
        puts "**************************************"
        puts "Both mass_kg and distance_from_sun_km must be numbers that are greater than zero."
        puts "Planet not added."
      else
        solar_system.add_planet(new_planet)
      end

    when 5
      print"Please enter the first planet => "
      a = gets.chomp
      print"Please enter the second planet => "
      b = gets.chomp
      puts "**************************************"
      puts solar_system.distance_between(a, b)
    else
      puts "**************************************"
      puts "Please enter 1, 2, 3, 4 or 5 to select your choice."
    end
  end

end


main
