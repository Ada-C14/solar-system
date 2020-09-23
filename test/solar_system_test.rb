# Pauline Chane (@PaulineChane on GitHub)
# Ada Developers Academy Cohort 14
# Solar System Optional Exercise - SolarSystem Class Minitests
# 09/23/2020

# Practice TDD by writing tests to validate functionality for two new classes: Planet and SolarSystem

require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/solar_system'
require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'SolarSystem' do

  it 'creates a new Solar System object' do
    # Arrange and Act
    solar_system = SolarSystem.new('Sol')

    # Assert
    expect(solar_system).must_be_instance_of SolarSystem
  end

  it 'can add ONLY Planet object to @planets' do
    # Arrange and Act
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    # Assert for each field
    expect(solar_system.add_planet(earth)).must_equal true # adds planet
    expect(solar_system.add_planet(["earth"])).must_equal false # doesn't add non-Planet object
  end

  it 'can return a string that contains a list of planets in @planets' do

    # Arrange and Act
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system.add_planet(earth)

    # Assert <-  You do this part!
    expect(solar_system.list_planets).must_equal "Planets orbiting #{solar_system.star_name}\n1. #{earth.name}"
  end

  it 'can find a planet in the @planets array of a SolarSystem object by the planet\'s name field' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    earth1 = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    earth2 = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Has humans')
    # earth2 verifies that the first occurrence of a planet with name "Earth" is what is returned

    solar_system.add_planet(earth1)
    solar_system.add_planet(earth2)

    # Act
    found_planet1 = solar_system.find_planet_by_name('Earth') # first occurrence/exact name match
    found_planet2 = solar_system.find_planet_by_name('eArTh') # catch cases
    found_planet3 = solar_system.find_planet_by_name('mars') # not found, should return nil

    # Assert
    expect(found_planet1.fun_fact).must_equal 'Only planet known to support life'
    expect(found_planet2.name).must_equal 'Earth'
    expect(found_planet3).must_be_nil
  end

  it 'can find, assuming all planets are in a straight line, the distance between two planets in a SolarSystem object as input by name' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    mars = Planet.new('Mars', 'red', 6.4191e23, 2.279e8, 'Planet with the highest known mountain in its solar system - Olympus Mons')

    solar_system.add_planet(earth)
    solar_system.add_planet(mars)

    # Act
    mars_earth_distance = solar_system.distance_between("earth", "mars") # not case sensitive!!
    earth_klaatu_nebula_distance = solar_system.distance_between("earth", "klaatu nebula")

    # Assert
    expect(mars_earth_distance).must_be_close_to 78300000.0
    expect(earth_klaatu_nebula_distance).must_be_nil
  end


  it 'raises an ArgumentError for attempts to write variables into fields' do
    #Arrange and Act
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    solar_system.add_planet(earth)

    # Assert
    # catch error for attempts to write in all fields as user
    expect {
      solar_system.star_name = "Sokor"
    }.must_raise NoMethodError

    expect {
      solar_system.planets = [earth]
    }.must_raise NoMethodError
  end

end