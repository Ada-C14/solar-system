require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/solar_system.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Solar System' do
  describe 'initialize solar system' do
    it 'creates an instance of Solar System' do
      star_name = 'Sun'
      solar_system = SolarSystem.new(star_name)
      expect(solar_system).must_be_instance_of SolarSystem
    end
  end
end

  describe 'add planet' do
    it 'adds a planet' do
      solar_system = SolarSystem.new("Sun")

      earth = Planet.new('Earth','blue-green',5.972e24,1.496e8,"it is the only planet known to support life.")
      mars = Planet.new("Mars", "red", 6.39e23, 2.066e8, "it has the highest mountain in our solar system (24km).")

      solar_system.add_planet(earth)
      solar_system.add_planet(mars)

      expect(solar_system.planets.length).must_equal 2
    end
  end

  describe 'list planet' do
    it 'lists the planets' do
      solar_system = SolarSystem.new('Sun')
      expect(solar_system.list_planets).must_be_instance_of String

      # Below test didn't work - need to figure out why.
      earth = Planet.new('Earth','blue-green',5.972e24,1.496e8,"it is the only planet known to support life.")
      mars = Planet.new("Mars", "red", 6.39e23, 2.066e8, "it has the highest mountain in our solar system (24km).")
      solar_system.add_planet(earth)
      solar_system.add_planet(mars)
      expect(solar_system.list_planets).must_equal "Planets orbiting the Sun \n1. Earth \n2. Mars \n"
    end
  end

  describe 'finds a planet by name' do
    it 'raises an error if the planet cannot be found' do
    solar_system = SolarSystem.new("Sun")

    earth = Planet.new('Earth','blue-green',5.972e24,1.496e8,"it is the only planet known to support life.")
    mars = Planet.new("Mars","red",6.39e23,2.066e8,"it has the highest mountain in our solar system (24km).")

    solar_system.add_planet(earth)
    solar_system.add_planet(mars)

    expect{solar_system.find_planet_by_name("Mercury")}.must_raise ArgumentError
    end

    it 'if the planet can be found it must be an instance of the class Planet' do
      solar_system = SolarSystem.new("Sun")
      earth = Planet.new('Earth','blue-green',5.972e24,1.496e8,"it is the only planet known to support life.")
      solar_system.add_planet(earth)
      expect(solar_system.find_planet_by_name("Earth")).must_be_instance_of Planet
    end
  end

  describe 'distance between' do
    it 'calculates the distance between two planets' do
    solar_system = SolarSystem.new("Sun")

    earth = Planet.new("Earth",'blue-green',5.972e24,1.496e8,"it is the only planet known to support life.")
    mars = Planet.new("Mars","red",6.39e23,2.066e8,"it has the highest mountain in our solar system (24km).")

    solar_system.add_planet(earth)
    solar_system.add_planet(mars)

    expect(solar_system.distance_between("Earth", "Mars")).must_be_close_to 57000000
    end
  end
