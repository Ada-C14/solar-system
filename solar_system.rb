# In this wave you will build a second class, SolarSystem, which is responsible for keeping track of a collection of instances of Planet.
#
# Instructions
# In a new file called solar_system.rb, create a new class called SolarSystem.
#
# The constructor should take one parameter, star_name, and save it in an instance variable.
# Each SolarSystem should have an instance variable called @planets, which will store an array of planets.
# When the SolarSystem is created, @planets should be set to an empty array.
# Both @star_name and @planets should be readable but not writable.
# Create a method SolarSystem#add_planet, which will take an instance of Planet as a parameter and add it to the list of planets.
#
# Create a method SolarSystem#list_planets, which will return (not puts) a string containing a list of all the planets in the system.
# The string should be formatted in this style:
#
# Planets orbiting <star name>
# 1.  Mercury
# 2.  Venus
# 3.  Earth
# 4.  Mars
# 5.  Jupiter
# Update your driver code in main.rb to create an instance of SolarSystem, add all your Planets to it, and then
# print the list. Here is an example with one Planet:
#
# solar_system = SolarSystem.new('Sol')
#
# earth = Planet.new('Earth', ...)
# solar_system.add_planet(earth)
#
# list = solar_system.list_planets
# puts list
# # => Planets orbiting Sol
# # => 1.  Earth
# NOTE: When you first run your driver code, you may get an error like this:
#
# NameError: uninitialized constant SolarSystem
# What does this error mean? What do you need to do to fix it?
#
# Create a method SolarSystem#find_planet_by_name, that takes the name of a planet as a string, and returns the corresponding instance of Planet. The lookup should be case-insensitive, so that Earth, earth and eArTh all return the same planet.
#
# Update your driver code to exercise this method:
#
# found_planet = solar_system.find_planet_by_name('Earth')
#
# # found_planet is an instance of class Planet
# puts found_planet
# # => #<Planet:0x00007fe7c2868ee8>
#
# puts found_planet.summary
# # => Earth is a blue-green planet ...
# Questions for you to consider as you write this method:
#
# What should your method do if there is no planet with the given name?
# What should your method do if there are multiple planets with the given name?
# Is there a built-in Ruby enumerable method that could help you here?
# OPTIONAL: Create a method, SolarSystem#distance_between, that takes two planet names as parameters and returns the distance between them.
#
# You can assume that all the planets are lined up in a straight line.
#
# OPTIONAL: Add minitest tests for SolarSystem.
#
class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end

  attr_reader :star_name, :planets

  def add_planet(planet)
    @planets << planet.name
  end

  def list_planets
    return "Planets orbiting #{@star_name}:\n", @planets.each_with_index.map { |planet, i| "#{i+1}. #{planet}" }
  end

  def find_planet_by_name(planet)
    planet = planet.capitalize
    @planets.map do |index|
      if index == planet
        return planet
      end
      end
    return nil
  end

end

