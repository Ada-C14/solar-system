require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'
require_relative '../lib/solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "SolarSystem" do
  describe 'constructor' do
    it 'sets values correctly' do

      star_name = 'Alpha Centauri'

      test_solar_sys = SolarSystem.new(star_name)

      expect(test_solar_sys.star_name).must_equal 'Alpha Centauri'
      expect(test_solar_sys.planets).must_equal []

    end
  end

  describe 'add_planets' do
      it 'raises error if trying to add non-Planet' do

        star_name = 'Alpha Centauri'
        non_planet = 1

        test_solar_sys = SolarSystem.new(star_name)

        expect { test_solar_sys.add_planet(non_planet) }.must_raise ArgumentError

      end

      it 'Successfully adds planet to planets array' do

        test_planets = [Planet.new(name: "Iris", mass_kg: 50000, fun_fact: "Iris is made-up planet", distance_from_sun_km: 2, color: 'Red'),
                        Planet.new(name: "Harold", mass_kg: 12345, fun_fact: "Harold is a boring planet", distance_from_sun_km: 213, color: 'Purple'),
                        Planet.new(name: "Athena", mass_kg: 666, fun_fact: "Athena supports alien life", distance_from_sun_km: 200000, color: 'Black')]

        test_solar_sys = SolarSystem.new('Sol')

        test_planets.each do |planet|
          test_solar_sys.add_planet(planet)
        end

        expect(test_solar_sys.planets).must_equal test_planets
      end
    end
end