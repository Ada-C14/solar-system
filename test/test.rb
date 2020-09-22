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



# describe "Solar System" do
#   describe "list_planets" do
#     it "will .... if there is no planet"
#   end
#
#   describe "find_planet_by_name" do
#     it "will .... if there is no planet with the given name"
#     it "will .... if there are multiple planets with the given name"
#   end
#
#   describe distance_between do
#     it "will .... if there is no planet with the given name"
#     it "will return a positive number for distance"
#   end
# end
#
# describe "Control loop in main" do
#    it "will... if the user enters a bad command"
#
#   it "will ... if user asks for details on a planet that doesn't exist"
#
#    it "will ....if user enters an bad value for a new planet's mass?"
# end
