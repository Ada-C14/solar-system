require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planets class" do
  describe "constructor" do
    it "check if correct data type is returned" do
      #Arrange
      #nothing to arrange, except planet.rb

      #Act
      test_planet = Planet.new(
          name: "Test Planet",
          color: :pink,
          mass_kg: 1e10,
          distance_from_sun_km: 1e10,
          fun_fact: "Initialization test."
      )

      #Assert
      expect(test_planet).must_be_instance_of Planet
    end

     it "checks each hash value is the correct data-type" do
      #Arrange
      #nothing to arrange, except planet.rb

      #Act
      test_planet = Planet.new(
          name: "Test Planet",
          color: :pink,
          mass_kg: 1e10,
          distance_from_sun_km: 1e10,
          fun_fact: "Initialization test."
      )

      #Assert
      expect(test_planet.name).must_be_kind_of String
      expect(test_planet.color).must_be_kind_of Symbol
      expect(test_planet.mass_kg).must_be_kind_of Float
      expect(test_planet.distance_from_sun_km).must_be_kind_of Float
      expect(test_planet.fun_fact).must_be_kind_of String
    end

    it "check for incorrect initialization parameters" do
      # Arrange && Act && Assert
      expect{ test_planet = Planet.new() }.must_raise ArgumentError, "wrong number of arguments"
    end

    it "ArgumentError when mass or distance < 0" do
    # Arrange && Act && Assert
    expect{
      test_planet = Planet.new(
          name: "Test Planet",
          color: :pink,
          mass_kg: -1e10,
          distance_from_sun_km: 1e10,
          fun_fact: "Negative mass test."
      ) }.must_raise ArgumentError
    expect{
      test_planet = Planet.new(
          name: "Test Planet",
          color: :pink,
          mass_kg: 1e10,
          distance_from_sun_km: -1e10,
          fun_fact: "Negative distance test."
      ) }.must_raise ArgumentError
    end

    it "check if planets.name is correctly titleized " do
      #Arrange
      #nothing to arrange, except planet.rb

      # Act
      test_planet = Planet.new(
        name: "teSt PlaNet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Planets[] data type test."
      )

      # Assert
      expect(test_planet.name).must_equal "Test Planet"
    end
  end

  describe "summary" do
    it "check that summary returns a string" do
      #Arrange
      test_planet = Planet.new(
          name: "Test Planet",
          color: :pink,
          mass_kg: 1e10,
          distance_from_sun_km: -1e10,
          fun_fact: "Negative distance test."
      )

      # Act
      test_summary = test_planet.summary

      # Assert
      expect(test_summary).must_be_kind_of String
    end
  end

end



