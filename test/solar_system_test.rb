require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'
require_relative '../lib/solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "SolarSystem" do
  before do
    @test_planets = [Planet.new(name: "Iris", mass_kg: 50000, fun_fact: "Iris is made-up planet", distance_from_sun_km: 2, color: 'Red'),
                     Planet.new(name: "Harold", mass_kg: 12345, fun_fact: "Harold is a boring planet", distance_from_sun_km: 213, color: 'Purple'),
                     Planet.new(name: "Athena", mass_kg: 666, fun_fact: "Athena supports alien life", distance_from_sun_km: 200000, color: 'Black')]


  end
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

        # test_planets = [Planet.new(name: "Iris", mass_kg: 50000, fun_fact: "Iris is made-up planet", distance_from_sun_km: 2, color: 'Red'),
        #                 Planet.new(name: "Harold", mass_kg: 12345, fun_fact: "Harold is a boring planet", distance_from_sun_km: 213, color: 'Purple'),
        #                 Planet.new(name: "Athena", mass_kg: 666, fun_fact: "Athena supports alien life", distance_from_sun_km: 200000, color: 'Black')]

        test_solar_sys = SolarSystem.new('Sol')

        @test_planets.each do |planet|
          test_solar_sys.add_planet(planet)
        end
        #each loop check specific value, length of planets array is correct
        expect(test_solar_sys.planets).must_equal @test_planets
      end
  end
  describe 'list_planets' do
    it 'returns a string list of planets' do

      test_solar_sys = SolarSystem.new('Sol')

      @test_planets.each do |planet|
        test_solar_sys.add_planet(planet)
      end

      test_planet_list = test_solar_sys.list_planets

      expect(test_planet_list).must_equal "Planets orbiting Sol\n1.  Iris\n2.  Harold\n3.  Athena\n"

   end
  end
  describe 'find_planet_by_name' do
    it 'finds planet when passed planet name' do


      test_solar_sys = SolarSystem.new('Sol')

      @test_planets.each {|planet| test_solar_sys.add_planet(planet)}

      found_planet = test_solar_sys.find_planet_by_name('Harold')

      expect(found_planet).must_equal @test_planets[1]

    end

    it 'finds planet when passed planet name, despite the case of the name' do

      test_solar_sys = SolarSystem.new('Sol')

      @test_planets.each {|planet| test_solar_sys.add_planet(planet)}

      found_planet = test_solar_sys.find_planet_by_name('HaRolD')

      expect(found_planet).must_equal @test_planets[1]

    end

    it 'finds planet when passed planet name, returns the first planet added with that name' do

      test_solar_sys = SolarSystem.new('Sol')

      @test_planets.each {|planet| test_solar_sys.add_planet(planet)}

      found_planet = test_solar_sys.find_planet_by_name('Harold')
      #uses array of pairs to DRY up input/output - shared setup
      expect(found_planet).must_equal @test_planets[1]

    end
  end
end