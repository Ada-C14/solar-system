require_relative 'planet'
require_relative 'solar_system'

def main
=begin 
  # For wave 1 
  # Create two different instances of Planet and print out some of their attributes  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts "#{ earth.name } is #{ earth.color }"
  puts earth.summary  

  mars = Planet.new('Mars', 'red', 6.39e23, 14.16e8, 'The second-smallest planet in the solar system')  
  puts "#{ mars.name } is #{ mars.fun_fact.downcase }"
  puts mars.summary  

  # For wave 2
  # create an instance of SolarSystem, add all your Planets to it, and then print the list
  solar_system = SolarSystem.new("Sol")
  saturn = Planet.new('Saturn', 'pale yellow', 5.683e26, 92.802e8, 'The second-largest planet in the solar system')
  solar_system.add_planet(saturn)

  list = solar_system.list_planets
  puts list

  # Exercise SolarSystem#find_planet_by_name
  found_planet = solar_system.find_planet_by_name('saturn')
  # puts found_planet
  # puts found_planet.summary if found_planet.class == Planet
  puts "We couldn't find this planet, please try agian" if found_planet.nil?
  found_planet.each { |planet| puts "#{ planet.summary }\n"}
=end

  # For wave 3
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  mars = Planet.new('Mars', 'red', 6.39e23, 14.16e8, 'The second-smallest planet in the solar system')
  solar_system.add_planet(mars)

  saturn = Planet.new('Saturn', 'pale yellow', 5.683e26, 92.802e8, 'The second-largest planet in the solar system')
  solar_system.add_planet(saturn)
  
  options = ["list planets", "planet details", "add planet", "distance between planets", "exit"]
  stop_loop = false
  until stop_loop
    puts "\nWhat do you want to see?"
    options.each_with_index { |option, index| puts "#{ index+1 }. #{ option }" }
    user_response = gets.chomp.downcase
    
    case user_response
    when "list planets", "1"
      puts "\n", list = solar_system.list_planets 
    when "planet details", "2"
      puts "\nYay, let's see more details about the planets. Which planet do you want to see?"
      puts list = solar_system.list_planets 
      print "==> "
      user_planet = gets.chomp.downcase
      found_planet = solar_system.find_planet_by_name(user_planet)
      
      while found_planet.count == 0
        puts "\nSorry, we don't have this planet. Please try again.", list = solar_system.list_planets 
        print "==> "
        user_planet = gets.chomp.downcase
        found_planet = solar_system.find_planet_by_name(user_planet)
      end
      
      puts "\nThe information for planet #{ user_planet.capitalize } is as below:"
      found_planet.each { |planet| puts "#{ planet.summary }"}
    when "add planet", "3"
      puts "\nSo exciting, you're to add a new planet!"  
      new_planet = Hash.new
      elements_to_give = ["name", "color", "mass_kg", "distance_from_sun_km", "fun_fact"]
      elements_to_give.each do |element|
        print "What's the #{ element } of this planet: "
        user_new_planet = gets.chomp.downcase
        if element == "name"
          check_name = solar_system.find_planet_by_name(user_new_planet)
          until check_name.count == 0
            print "Sorry, this name is used, please try another name ==> "
            user_new_planet = gets.chomp.downcase
          end
        end
        new_planet[element] = user_new_planet
      end
      
      rescue_status = false
      begin
        user_planet = Planet.new(new_planet["name"].capitalize, new_planet["color"], new_planet["mass_kg"], new_planet["distance_from_sun_km"], new_planet["fun_fact"])
      rescue ArgumentError => exception
        puts "\n#{ exception.message }"
        puts "Your new planet is not added, please try again."
        rescue_status = true
      end 
      
      solar_system.add_planet(user_planet) if rescue_status == false
      puts "\nNow, want to see your new planet on the main menu? Please go check \"list planets\"" if rescue_status == false
    when "distance between planets", "4"
      puts "\n Which two planets do you want to see their distance?"
      puts list = solar_system.list_planets 
      two_planet = 1
      planets_for_distance = Hash(first: "", second:"")
      until two_planet == 3
        print "Planet #{two_planet}: "
        user_distance_planet = gets.chomp.downcase
        found_planet = solar_system.find_planet_by_name(user_distance_planet)

        if found_planet.nil? || found_planet.count == 0
          puts "Sorry, we don't have this planet: #{ user_distance_planet }" 
        else
          planets_for_distance[:first] = user_distance_planet if two_planet == 1
          planets_for_distance[:second] = user_distance_planet if two_planet == 2
          two_planet += 1
        end
      end      
      puts "\nThe distance between #{ planets_for_distance[:first] } and #{ planets_for_distance[:second] } is #{ solar_system.distance_between(planets_for_distance[:first], planets_for_distance[:second]) }km." 
    when "exit", "5"
      stop_loop = true 
    else
      puts "Please enter the options listed."
    end
  end

end

main