
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'
require_relative '../lib/solar_system'


# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
# Create cases to test the methods created to planets.rb and solar_system.rb
describe 'Solar System' do

  # Add minitest tests for Planet (W1.6)
  describe 'Planets test' do
    it "Correctly create a planet" do

      # Arrange
      mercury = Planet.new('Mercury','dark grey',3.30e23, 57.9, 'Is hot, but not too hot for ice')

      # Act
      expect(mercury.name).must_equal 'Mercury'
      expect(mercury.color).must_equal 'dark grey'
      expect(mercury.mass_kg).must_equal 3.30e23
      expect(mercury.distance_from_sun_km).must_equal 57.9
      expect(mercury.fun_fact).must_equal 'Is hot, but not too hot for ice'
    end

    it "Correctly calculates summary" do

      # Arrange
      mercury = Planet.new('Mercury','dark grey',3.30e23, 57.9, 'Is hot, but not too hot for ice')
      mercury_summary =
          " - Name: Mercury\n"+
          " - Color: dark grey\n"+
          " - Mass (in kg): 3.3e+23kg\n"+
          " - Distance From Sun (in km): 57.9 million km.\n"+
          " - Fun Fact: Is hot, but not too hot for ice"
      # Act
      expect(mercury.summary).must_equal mercury_summary
    end
  end

  # Add minitest tests for SolarSystem (W2.7)
  describe 'Solar System test' do
    it 'returns an array of planets' do
      planets = []
      expect(solar_system.pla).must_equal 10

      expect(drawn_letters).must_be_instance_of Array
      drawn_letters.each do |letter|
        expect(letter).must_be_instance_of String
        expect(letter.length).must_equal 1
      end
  end

end






