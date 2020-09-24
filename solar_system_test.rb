require "minitest/autorun"
require "minitest/reporters"
require_relative "solar_system.rb"
require_relative "planet.rb"

Minitest::Reporters.use!

describe "solar system" do
  it "will create a new instance of the SolarSystem class" do
    name = "Titan"

    new_solar_system = SolarSystem.new(name)

    expect(new_solar_system).must_be_instance_of SolarSystem
  end

  it "adds 3 new Planet instances to our SolarSystem" do
    solar_system = SolarSystem.new('Sun')
    mercury = Planet.new('Mercury', 'burnt orange', 330, 35.98, 'Aliens live here!')
    venus = Planet.new('Venus', 'pink', 48700, 67.24, 'Both a planet and a goddess!')
    earth = Planet.new('Earth', 'blue-green', 59700, 92.96, 'We have water, air and humans!')

    all_planets = [mercury, venus, earth]

    all_planets.each { |planet| solar_system.add_planet(planet) }

    expect(solar_system.planets.length).must_equal 3
    expect(solar_system.planets[1].color).must_equal 'pink'
  end
end