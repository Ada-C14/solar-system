require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/spec'

# Project file path goes here
require_relative '../lib/solar_system.rb'
require_relative '../lib/planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "solar system" do

  it "adds a planet" do
    # Arrange
    earth = Planet.new('Earth', 'blue-green', 1, 1.496e8, 'Only planet known to support life')
    # jupiter = Planet.new('Jupiter', 'pink-ish', 7.972e24, 3.496e8, 'Rings man')

    # Act
    solar_system = SolarSystem.new("Sol")
    solar_system.add_planet(earth)

    # Assert
    expect(solar_system.planets[0].name).must_equal "Earth"

  end

  it "lists planets" do
    # Arrange
    earth = Planet.new('Earth', 'blue-green', 1, 1.496e8, 'Only planet known to support life')

    # Act
    solar_system = SolarSystem.new("Sol")
    solar_system.add_planet(earth)

    # Assert
    expect(solar_system.list_planets).must_equal "Planets orbiting Sol: \n1. Earth"

  end

end