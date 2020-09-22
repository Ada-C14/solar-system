require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do

  describe 'constructor method' do

    it 'creates a planet with the given arguments' do

      planet_facts = {name: "Iris", mass_kg: 50000, fun_fact: "Iris is made-up planet", distance_from_sun_km: 2, color: 'Red'}

      planet = Planet.new(name: planet_facts[:name], mass_kg: planet_facts[:mass_kg], fun_fact: planet_facts[:fun_fact], distance_from_sun_km: planet_facts[:distance_from_sun_km], color: planet_facts[:color])

      test_planet = {name: planet.name, mass_kg: planet.mass_kg, fun_fact: planet.fun_fact, distance_from_sun_km: planet.distance_from_sun_km, color: planet.color}

      expect(planet_facts).must_equal test_planet
    end


    it 'must raise ArgumentError if mass_kg <= 0' do
      expect {Planet.new(name: "Iris", mass_kg: -50000, fun_fact: "Iris is made-up planet", distance_from_sun_km: 2, color: 'Red')}.must_raise ArgumentError
    end

    it 'must raise ArgumentError if distance_from_sun_km <= 0' do
      expect {Planet.new(name: "Iris", mass_kg: -50000, fun_fact: "Iris is made-up planet", distance_from_sun_km: -2, color: 'Red')}.must_raise ArgumentError
    end


  end

  describe 'summary method' do

    it 'summary returns a string with a printout of data about planet' do
      planet_facts = {name: "Iris", mass_kg: 50000, fun_fact: "Iris is made-up planet", distance_from_sun_km: 2, color: 'Red'}

      planet = Planet.new(name: planet_facts[:name], mass_kg: planet_facts[:mass_kg], fun_fact: planet_facts[:fun_fact], distance_from_sun_km: planet_facts[:distance_from_sun_km], color: planet_facts[:color])

      test_summary = "#{planet_facts[:name]} is #{planet_facts[:color]}, weighs #{planet_facts[:mass_kg]} kgs, and is #{planet_facts[:distance_from_sun_km]} from the sun.\nFun fact about #{planet_facts[:name]}: #{planet_facts[:fun_fact]}"

      expect(test_summary).must_equal planet.summary
    end

  end
end