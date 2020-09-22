require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "planet" do

  it "returns the correct name string" do
  # Arrange
  name = "Earth"
  color = "blue-green"
  mass_kg = 5.972
  distance_from_sun_km = 1.496e8
  fun_fact = "the only planet known to support life"
  # Act
  earth = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  # Assert
  expect(earth.name).must_equal "Earth"
  end

  it "returns ArgumentError for mass_kg String input" do
  # Arrange
  name = "Earth"
  color = "blue-green"
  mass_kg = "5.972 million"
  distance_from_sun_km = 1.496e8
  fun_fact = "the only planet known to support life"
  # Act
  # Assert
  expect {
    Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  }.must_raise ArgumentError
  end

end

