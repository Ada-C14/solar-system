require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../planet'
require_relative '../solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet class' do
  it 'creates an instance of Planet' do
    name = 'Dulcinea'
    color = 'unknown'
    mass_kg = 6.0816e25
    distance_from_star_km = 1.5946e7
    fun_fact = 'Named after Dulcinea from Don Quixote'

    dulcinea = Planet.new(name, color, mass_kg, distance_from_star_km, fun_fact)
    expect(dulcinea).must_be_instance_of Planet
  end
  it 'raises ArgumentError with invalid arguments'do
    name = 'Dulcinea'
    color = 'unknown'
    mass_kg = 6.0816e25
    wrong_mass = -6.0816e25
    distance_from_star_km = 1.5946e7
    wrong_distance = -123234345
    fun_fact = 'Named after Dulcinea from Don Quixote'

    expect{
      Planet.new(name, color, wrong_mass, distance_from_star_km, fun_fact)
    }.must_raise ArgumentError

    expect{
      Planet.new(name, color, mass_kg, wrong_distance, fun_fact)
    }.must_raise ArgumentError
  end

  it 'returns a summary of Planet characteristics' do
    name = 'Dulcinea'
    color = 'unknown'
    mass_kg = 6.0816e25
    distance_from_star_km = 1.5946e7
    fun_fact = 'Named after Dulcinea from Don Quixote'

    dulcinea = Planet.new(name, color, mass_kg, distance_from_star_km, fun_fact)

    expect(dulcinea.summary).must_be_instance_of String

  end
end

describe 'SolarSystem class' do
  describe 'Initialize class' do
    it 'creates an instance of class SolarSystem' do
      star_name = 'Mu Arae'

      mu_arae_system = SolarSystem.new(star_name)

      expect(mu_arae_system).must_be_instance_of SolarSystem
    end
  end
  mu_arae_system = SolarSystem.new('Mu Arae')

  name = 'Dulcinea'
  color = 'unknown'
  mass_kg = 6.0816e25
  distance_from_star_km = 1.5946e7
  fun_fact = 'Named after Dulcinea from Don Quixote'

  dulcinea = Planet.new(name, color, mass_kg, distance_from_star_km, fun_fact)

  mu_arae_system.add_planet(dulcinea)

  describe 'add_planet method' do
    it 'Adds a planet to a solar system object' do
      mu_arae_system = SolarSystem.new('Mu Arae')
      mu_arae_system.add_planet(dulcinea)
      expect(mu_arae_system.planets).must_equal [dulcinea]
    end

    it "raises ArgumentError if planet is already in the solar system" do
      expect{
        mu_arae_system.add_planet(dulcinea)
      }.must_raise ArgumentError
    end
  end

  describe 'list_planets method' do
    it 'returns a listing of planets in Solar System' do
      expect(mu_arae_system.list_planets).must_be_instance_of String
    end
  end

  describe 'find planets by name' do
    it 'returns a Planet object if a planet is in solar system' do
      expect(mu_arae_system.find_planet_by_name('Dulcinea')).must_be_instance_of Planet
    end

    it 'raises ArgumentError if a planet is not in solar system' do
      expect {
        mu_arae_system.find_planet_by_name('Rocinante')
      }.must_raise ArgumentError
    end
  end

  describe 'average orbit delta' do
    it 'returns difference in average oribt distance between planet1 and planet2' do
      name = 'Quijote'
      color = 'unknown'
      mass_kg = 2.847e27
      distance_from_star_km = 2.527e8
      fun_fact = 'Named via a public naming and voting process in 2015'

      quijote = Planet.new(name, color, mass_kg, distance_from_star_km, fun_fact)
      mu_arae_system.add_planet(quijote)

      delta = mu_arae_system.average_orbit_delta('quijote', 'dulcinea')

      expect(delta).must_equal 236754000
    end
  end
end