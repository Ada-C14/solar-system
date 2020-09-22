# Pauline Chane (@PaulineChane on GitHub)
# Ada Developers Academy Cohort 14
# Solar System Optional Exercise - Minitests
# 09/23/2020

# Practice TDD by writing tests to validate functionality for two new classes: Planet and SolarSystem

require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do

  it 'creates a new Planet object' do
    # Arrange and Act
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    # Assert
    expect(earth.instance_of?(Planet)).must_equal true
  end

  it 'can read all field inputs for a created Planet object' do
    # Arrange and Act
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    # Assert for each field
    expect(earth.name).must_equal 'Earth'
    expect(earth.color).must_equal 'blue-green'
    expect(earth.mass_kg).must_be_close_to 5.972e24
    expect(earth.distance_from_sun_km).must_be_close_to 1.496e8
    expect(earth.fun_fact).must_equal 'Only planet known to support life'
  end

  it 'can print a summary of all fields assigned for a Planet object' do

    # Arrange and Act
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    earth_summary = earth.summary
    # Assert <-  You do this part!
    expect(earth_summary).must_equal "SUMMARY OF PLANET\nPLANET: #{earth.name}\nCOLOR: #{earth.color}\nMASS (KG): #{earth.mass_kg}\nDISTANCE FROM SUN (KM): #{earth.distance_from_sun_km}\nFUN FACT: #{earth.fun_fact}"
  end

  it 'raises an ArgumentError for mass_kg construction parameter input less than or equal to 0' do
    # error for 0
    expect {
      Planet.new('Earth', 'blue-green', 0, 1.496e8, 'Only planet known to support life') # 24
    }.must_raise ArgumentError
    # error for less than 0
    expect {
      Planet.new('Earth', 'blue-green', -1, 1.496e8, 'Only planet known to support life') # 24
    }.must_raise ArgumentError
  end

  it 'raises an ArgumentError for distance_from_sun_km construction parameter input less than or equal to 0' do
    # error for 0
    expect {
      Planet.new('Earth', 'blue-green', 5.972e24, 0, 'Only planet known to support life') # 24
    }.must_raise ArgumentError
    # error for less than 0
    expect {
      Planet.new('Earth', 'blue-green', 5.972e24, -1, 'Only planet known to support life') # 24
    }.must_raise ArgumentError
  end

  it 'raises an NoMethodError when user attempts to write/mutate Planet fields, ex) planet.color = \'pink\'' do
    # Arrange and Act
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    # Assert
    # catch error for attempts to write in all fields as user
    expect {
      earth.name = "Not Earth"
    }.must_raise NoMethodError

    expect {
      earth.color = "lava red"
    }.must_raise NoMethodError

    expect {
      earth.mass_kg = "1000000"
    }.must_raise NoMethodError

    expect {
      earth.distance_from_sun_km = "1000000"
    }.must_raise NoMethodError

    expect {
      earth.fun_fact = "Mostly harmless."
    }.must_raise NoMethodError
  end

end