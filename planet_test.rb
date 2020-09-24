require "minitest/autorun"
require "minitest/reporters"
require_relative "planet.rb"

Minitest::Reporters.use!

describe "planet" do
  it "will create a new instance of the Planet class" do
    name = "Cybertron"
    color = "teal"
    mass = 43567.7
    distance = 45098345.64
    fun_fact = "Just like Earth, but cooler."

    cybertron = Planet.new(name, color, mass, distance, fun_fact)

    expect(cybertron).must_be_instance_of Planet
  end

  it "will return a summary of our Planet instance" do
    mercury = Planet.new('Mercury', 'burnt orange', 330, 35.98, 'Aliens live here!')
    summary = mercury.summary

    assert_match /Mercury is 35\.98 km away from the Sun\./, summary
  end
end