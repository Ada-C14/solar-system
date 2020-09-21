require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'
require_relative '../lib/solar_system'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


#TODO: check if parameter passed to add_planet is a Planet instance
# TODO: check for nil SolarSystem initializations
# TODO: check for ArgumentError if Planet is wrong data type
describe "SolarSystem class" do
  describe "constructor" do
    it "check initialization" do
      #Arrange
      #nothing to arrange, except solar_system.rb

      #Act
      test_solar_system = SolarSystem.new("Meep Morp")

      #Assert
      expect(test_solar_system).must_be_instance_of SolarSystem
      expect(test_solar_system.star_name).must_be_kind_of String
      expect(test_solar_system.planets).must_be_kind_of Array
      expect(test_solar_system.planets.length).must_equal 0
    end

    it "check for incorrect initialization parameters" do
      # Arrange && Act && Assert
      expect{ test_planet = SolarSystem.new() }.must_raise ArgumentError, "wrong number of arguments"
    end
  end

  describe "add_planet" do
    it "check if planets[] grows with each add_planet" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet = Planet.new(
        name: "Test Planet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Planets[] positive nominal test."
      )
      # Act
      test_solar_system.add_planet(test_planet)
      test_solar_system.add_planet(test_planet)
      test_solar_system.add_planet(test_planet)

      # Assert
      expect(test_solar_system.planets.length).must_equal 3
    end

    it "check if each planets[] element is a Planet" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet = Planet.new(
        name: "Test Planet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Planets[] data type test."
      )
      # Act
      test_solar_system.add_planet(test_planet)

      # Assert
      expect(test_solar_system.planets[0]).must_be_instance_of Planet
    end

    it "check for ArgumentError if planet data type is not a hash" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet = Planet.new(
        name: "Test Planet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Add Planet, type test."
      )
      # Act
      test_solar_system.add_planet(test_planet)
      test_solar_system.add_planet(test_planet)

      # Assert
      expect(test_solar_system.planets.length).must_equal 2
    end
  end

  describe "list_planets" do
    it "check that summary returns a string" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet1 = Planet.new(
        name: "Test Planet 2",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "List planets positive nominal."
      )
      test_planet2 = Planet.new(
        name: "Test Planet 2",
        color: :pink,
        mass_kg: 2e10,
        distance_from_sun_km: 2e10,
        fun_fact: "List planets positive nominal."
      )
      test_solar_system.add_planet(test_planet1)
      test_solar_system.add_planet(test_planet2)

      # Act
      test_planet_list = test_solar_system.list_planets

      # Assert
      expect(test_planet_list).must_be_kind_of String
    end

    it "Check for ArgumentError if self.planets.empty?" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")

      # Act && Assert
      expect{
        test_solar_system.list_planets
      }.must_raise ArgumentError, "There are no known planets in thie solar system."
    end
  end

  describe "find_planet_by_name" do

  end
end
