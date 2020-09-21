require 'minitest/autorun'
require 'minitest/reporters'

require_relative '../lib/main'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet" do
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



