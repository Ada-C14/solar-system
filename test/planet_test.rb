require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do
  it 'creates an instance of Planet' do
    name = 'Earth'
    color = 'blue-green'
    mass_kg = 5.972e24
    distance_from_star_km = 1.496e8
    fun_fact = "it is the only planet known to support life."

    earth = Planet.new(name, color, mass_kg, distance_from_star_km, fun_fact)
    expect(earth).must_be_instance_of Planet
  end

  it 'raises an error when the mass or distance from the sun are less than or equal to 0' do
    expect {Planet.new('Earth','blue-green',0,1.496e8 ,"it is the only planet known to support life.")}.must_raise ArgumentError
    expect {Planet.new('Earth','blue-green',5.972e24,0,"it is the only planet known to support life.")}.must_raise ArgumentError
  end

  it 'returns a summary for an instance of Planet' do
    name = 'Earth'
    color = 'blue-green'
    mass_kg = 5.972e24
    distance_from_star_km = 1.496e8
    fun_fact = "it is the only planet known to support life."

    earth = Planet.new(name, color, mass_kg, distance_from_star_km, fun_fact)
    expect(earth.summary).must_equal "Earth is blue-green, weighs 5.972e+24 kg, and is 149600000.0 km from the sun. A fun fact is that it is the only planet known to support life."
  end
end
