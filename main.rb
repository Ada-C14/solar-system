# main.rb
# This file should require_relative planet.rb, and contain one method called main that will exercise your code.
# This method should create two different instances of Planet and print out some of their attributes.

# Note that we invoke main as the last line of your program.
#
# Add an instance method to Planet called summary.
# This method should return (not puts) a string containing a nicely-formatted description of the planet.
# Exercise your summary method in the main method.
#
# Question: Why do we puts in main but not in Planet#summary?
#
# OPTIONAL: Add error checking to your constructor.
#
# Both mass_kg and distance_from_sun_km must be numbers that are greater than zero.
# What should your program do if they aren't?
# How will you make sure this behavior works?
# OPTIONAL: Add minitest tests for Planet.
require_relative 'planet'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life...yet')
  mercury = Planet.new('Mercury', 'blue', 3.285e23, 69.73e7, 'Sailor Mercury has water powers')

  return earth.summary, mercury.summary

end

puts main