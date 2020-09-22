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

    it "check if first planet name and last planet names are correct" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet1 = Planet.new(
        name: "teSt PlaNet 1",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Planets[] data type test."
      )
      test_planet2 = Planet.new(
        name: "teSt PlaNet 2",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Planets[] data type test."
      )
      first_planet = Planet.new(
        name: "FiRST PlaNet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Planets[] data type test."
      )
      last_planet = Planet.new(
        name: "laST PlaNet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Planets[] data type test."
      )
      # Act
      test_solar_system.add_planet(first_planet)
      test_solar_system.add_planet(test_planet1)
      test_solar_system.add_planet(test_planet2)
      test_solar_system.add_planet(last_planet)

      # Assert
      expect(test_solar_system.planets[0].name).must_equal "First Planet"
      expect(test_solar_system.planets[-1].name).must_equal "Last Planet"
    end

    it "check for ArgumentError if user attempts to add a planet that already exists within planets[]" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet = Planet.new(
        name: "teSt PlaNet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Planets[] data type test."
      )

      # Act && Assert
      expect{
        test_solar_system.add_planet(test_planet)
        test_solar_system.add_planet(test_planet)
      }.must_raise ArgumentError, "There is already a planet in this solar system by that name."
    end

    it "check for ArgumentError if planet data type is not a hash" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet1 = Planet.new(
          name: "Test Planet 1",
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

      # Act
      test_solar_system.add_planet(test_planet1)
      test_solar_system.add_planet(test_planet2)

      # Assert
      expect(test_solar_system.planets.length).must_equal 2
    end
  end

  describe "list_planets" do
    it "check that summary returns a concatenated string, with each planet separated by a comma" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet1 = Planet.new(
        name: "Test Planet 1",
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
      expect(test_planet_list).must_equal "Test Planet 1, Test Planet 2"
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
    it "returns Planet data type, for planet found (case-insensitive)" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet = Planet.new(
        name: "Test Planet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Find planet test."
      )
      test_solar_system.add_planet(test_planet)
      planet_search_term = "teSt PlaNet"
      # Act
      planet_search = test_solar_system.find_planet_by_name(planet_search_term)

      # Assert
      expect(planet_search).must_be_instance_of Planet
    end

    it "returns correct planet information, for search term mid-planets[]" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet = Planet.new(
        name: "Test Planet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Find planet test."
      )
      test_planet_peri = Planet.new(
        name: "Test Planet Peridot",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Find planet test."
      )
      test_planet1 = Planet.new(
        name: "Test Planet 1",
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
     test_planet3 = Planet.new(
        name: "Test Planet 2",
        color: :pink,
        mass_kg: 2e10,
        distance_from_sun_km: 2e10,
        fun_fact: "List planets positive nominal."
      )
      test_solar_system.add_planet(test_planet1)
      test_solar_system.add_planet(test_planet2)
      test_solar_system.add_planet(test_planet_peri)
      test_solar_system.add_planet(test_planet3)
      planet_search_term = "teSt PlaNet perIDOt"
      # Act
      planet_search = test_solar_system.find_planet_by_name(planet_search_term)

      # Assert
      expect(planet_search.name).must_equal "Test Planet Peridot"
    end

     it "returns correct planet information, for search term == planets[0]" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet_peri = Planet.new(
        name: "Test Planet Peridot",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Find planet test."
      )
      test_planet1 = Planet.new(
        name: "Test Planet 1",
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
     test_planet3 = Planet.new(
        name: "Test Planet 2",
        color: :pink,
        mass_kg: 2e10,
        distance_from_sun_km: 2e10,
        fun_fact: "List planets positive nominal."
      )
      test_solar_system.add_planet(test_planet_peri)
      test_solar_system.add_planet(test_planet1)
      test_solar_system.add_planet(test_planet2)
      test_solar_system.add_planet(test_planet3)
      planet_search_term = "teSt PlaNet perIDOt"
      # Act
      planet_search = test_solar_system.find_planet_by_name(planet_search_term)

      # Assert
      expect(planet_search.name).must_equal "Test Planet Peridot"
    end

    it "returns correct planet information, when search term == planets[-1]" do
      #Arrange
      test_solar_system = SolarSystem.new("Meep Morp")
      test_planet_peri = Planet.new(
        name: "Test Planet Peridot",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Find planet test."
      )
      test_planet1 = Planet.new(
        name: "Test Planet 1",
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
     test_planet3 = Planet.new(
        name: "Test Planet 2",
        color: :pink,
        mass_kg: 2e10,
        distance_from_sun_km: 2e10,
        fun_fact: "List planets positive nominal."
      )
      test_solar_system.add_planet(test_planet1)
      test_solar_system.add_planet(test_planet2)
      test_solar_system.add_planet(test_planet3)
      test_solar_system.add_planet(test_planet_peri)
      planet_search_term = "teSt PlaNet perIDOt"
      # Act
      planet_search = test_solar_system.find_planet_by_name(planet_search_term)

      # Assert
      expect(planet_search.name).must_equal "Test Planet Peridot"
    end

    it "returns `nil` when no planet is found by said name" do
    #Arrange
    test_solar_system = SolarSystem.new("Meep Morp")
      test_planet = Planet.new(
        name: "Test Planet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Find planet test."
      )
      test_solar_system.add_planet(test_planet)
      planet_search_term = "teSt PlaNet perIDOt"
      # Act
      planet_search = test_solar_system.find_planet_by_name(planet_search_term)

      # Assert
      expect(planet_search).must_be_nil
    end
  end
end
