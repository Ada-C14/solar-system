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
  puts found_planet
  puts found_planet.summary if found_planet.class == Planet
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
    options.each { |option| puts "- #{ option }" }
    user_response = gets.chomp.downcase
    
    if user_response == "list planets"
      puts "\n", list = solar_system.list_planets 
    elsif user_response == "planet details"
      puts "\nYay, let's see more details about the planets. Which planet do you want to see?"
      puts list = solar_system.list_planets 
      user_planet = gets.chomp.downcase
      found_planet = solar_system.find_planet_by_name(user_planet)
      puts "Sorry, we don't have this planet." if found_planet.nil?
      puts "\n", found_planet.summary if found_planet.class == Planet
    elsif user_response == "add planet"
      puts "\nSo exciting, you're to add a new planet!"  
      new_planet = Hash.new
      elements_to_give = ["name", "color", "mass_kg", "distance_from_sun_km", "fun_fact"]
      elements_to_give.each do |element|
        print "What's the #{ element } of this planet: "
        user_new_planet = gets.chomp.downcase
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
    elsif user_response == "distance between planets"
      puts "\n Which two planets do you want to see their distance?"
      puts list = solar_system.list_planets 
      two_planet = 1
      planets_for_distance = Array.new
      until two_planet == 3
        print "Planet #{two_planet}: "
        distance_planet = gets.chomp.downcase
        found_planet = solar_system.find_planet_by_name(distance_planet)
        if found_planet.nil?
          puts "Sorry, we don't have this planet: #{ distance_planet }" 
        else
          planets_for_distance.push(distance_planet)
          two_planet += 1
        end
      end      
      puts "The distance between #{ planets_for_distance[0] } and #{ planets_for_distance[1] } is #{solar_system.distance_between(planets_for_distance[0], planets_for_distance[1])}km." 
    elsif user_response == "exit"
      stop_loop = true 
    else
      puts "Please enter the options listed."
    end
  end

end

main