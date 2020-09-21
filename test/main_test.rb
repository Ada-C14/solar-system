require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

# require_relative '../lib/main'
require_relative '../lib/planet'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Solar Systems program" do
  describe "Planets class" do
    it "initialization returns correct data type" do
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

    # TODO: check for nil hashes in initialization
    # TODO: check for current hash length in initialization

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

  end
end