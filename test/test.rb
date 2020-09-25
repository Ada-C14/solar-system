require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet.rb'
require_relative '../lib/solar_system.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet" do
  it "will return an instance of class Planet" do
    earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
    expect(earth).must_be_instance_of Planet
  end

  it "will raise an ArgumentError if mass_kg and distance_from_sun_km are not numbers that are greater than zero" do
    expect{
      Planet.new("Earth", "blue-green", 0, 1.496e8, "Only planet known to support life.")
    }.must_raise ArgumentError

    expect{
      Planet.new("Earth", "blue-green", 5.972e24, 0, "Only planet known to support life.")
    }.must_raise ArgumentError

    expect{
      Planet.new("Earth", "blue-green", 0, 0, "Only planet known to support life.")
    }.must_raise ArgumentError

    expect{
      Planet.new("Earth", "blue-green", -1, 1, "Only planet known to support life.")
    }.must_raise ArgumentError
  end
end



describe "Solar System" do
  describe "list_planets" do
    it "will return a list of planets as a numbered" do
      solar_system = SolarSystem.new('Sol')
      earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
      venus = Planet.new("Venus", "white", 4.867e24, 1.078e8, "Nearly the same size as Earth.")
      solar_system.add_planet(earth)
      solar_system.add_planet(venus)

      list = solar_system.list_planets

      expect(list).must_be_instance_of String

      expect{puts solar_system.list_planets}.must_output "Planets orbiting Sol\n1. Earth\n2. Venus\n"
    end

    it "will indicate no planets if there is no planets to list" do
      solar_system = SolarSystem.new('Sol')
      expect{puts solar_system.list_planets}.must_output "...No planets found orbiting Sol\n"
    end

  end

  describe "find_planet_by_name" do
    it "will raise ArgumentError if there is no planet with the given name" do
      solar_system = SolarSystem.new('Sol')
      expect{solar_system.find_planet_by_name("earth")}.must_raise ArgumentError
    end

    it "will return an array if there are multiple planets with the given name" do
      solar_system = SolarSystem.new('Sol')
      earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
      earth_clone = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
      solar_system.add_planet(earth)
      solar_system.add_planet(earth_clone)
      found_planet = solar_system.find_planet_by_name("earth")

      expect(found_planet).must_be_instance_of Array
    end
  end

  # describe distance_between do
  #   it "will .... if there is no planet with the given name"
  #   it "will return a positive number for distance"
  # end
end

# describe "Control loop in main" do
#    it "will... if the user enters a bad command"
#
#   it "will ... if user asks for details on a planet that doesn't exist"
#
#    it "will ....if user enters an bad value for a new planet's mass?"
# end
