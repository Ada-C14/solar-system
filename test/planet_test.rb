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

      it "check if planets.name is correctly titleized " do
        #Arrange
        #nothing to arrange, except planet.rb

        # Act
        test_planet = Planet.new(
          name: "teSt PlaNet",
          color: :pink,
          mass_kg: 1e10,
          distance_from_sun_km: 1e10,
          fun_fact: "Planet constructor titleization test."
        )

        # Assert
        expect(test_planet.name).must_equal "Test Planet"
      end

    it "check for ArgumentError if no planet name is entered" do
      # Arrange && Act && Assert
      expect{
        test_planet = Planet.new(
            name: "",
            color: :pink,
            mass_kg: "fat",
            distance_from_sun_km: 1e10,
            fun_fact: "Empty name test."
        ) }.must_raise ArgumentError, "Need planet name."
      expect{
        test_planet = Planet.new(
            color: :pink,
            mass_kg: 1e10,
            distance_from_sun_km: "hecka far",
            fun_fact: "nil name test."
        ) }.must_raise ArgumentError, "Need planet name."
    end

    it "check for :unknown color if none is entered" do
      # Arrange
      test_planet1 = Planet.new(
        name: "Test Planet",
        color: "",
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "Empty color test."
      )
      test_planet2 = Planet.new(
        name: "Test Planet",
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "nil color test."
      )

      # Act
      planet1_color = test_planet1.color
      planet2_color = test_planet2.color

      # Assert
      expect(planet1_color).must_equal :unknown
      expect(planet2_color).must_equal :unknown
    end

    it "check if string color inputs get converted to symbol" do
      # Arrange
      test_planet = Planet.new(
        name: "Test Planet",
        color: "PINK",
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
        fun_fact: "String color test."
      )

      # Act
      planet_color = test_planet.color

      # Assert
      expect(planet_color).must_equal :pink
    end

    it "check for ArgumentError if no mass or distance is entered" do
      # Arrange && Act && Assert
      expect{
        test_planet = Planet.new(
            name: "Test Planet",
            color: :pink,
            distance_from_sun_km: 1e10,
            fun_fact: "nil mass test."
        ) }.must_raise ArgumentError, "Each planet must have a mass (kg) and distance from sun (km)."
      expect{
        test_planet = Planet.new(
            name: "Test Planet",
            color: :pink,
            mass_kg: 1e10,
            fun_fact: "nil distance test."
        ) }.must_raise ArgumentError, "Each planet must have a mass (kg) and distance from sun (km)."
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

    it "check for ArgumentError if a string is entered for mass or distance" do
      # Arrange && Act && Assert
      expect{
        test_planet = Planet.new(
            name: "Test Planet",
            color: :pink,
            mass_kg: "fat",
            distance_from_sun_km: 1e10,
            fun_fact: "String as mass test."
        ) }.must_raise ArgumentError, "Numerical values must be entered for both planet mass and distance from sun."
         expect{
        test_planet = Planet.new(
            name: "Test Planet",
            color: :pink,
            mass_kg: 1e10,
            distance_from_sun_km: "hecka far",
            fun_fact: "String as distance test."
        ) }.must_raise ArgumentError, "Numerical values must be entered for both planet mass and distance from sun."
    end


    it "check for 'TBD' if no fun fact input" do
      # Arrange
      test_planet = Planet.new(
        name: "Test Planet",
        color: :pink,
        mass_kg: 1e10,
        distance_from_sun_km: 1e10,
      )

      # Act && Assert
      expect(test_planet.fun_fact).must_equal "TBD"
    end
  end

  describe "summary" do
    it "check that summary returns a string" do
      #Arrange
      test_planet = Planet.new(
          name: "Test Planet",
          color: :pink,
          mass_kg: 1e10,
          distance_from_sun_km: 1e10,
          fun_fact: "Summary test."
      )

      # Act
      test_summary = test_planet.summary

      # Assert
      expect(test_summary).must_be_kind_of String
    end
  end

end



