require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet'

Minitest::Reporters.use!

describe "planet" do

  it "will return a string" do

    #Arrange
    earth = Planet.new("earth", "blue-green",5,2,"I live on it")

    #Act
    puts earth.summary

    #Assert
    expect(earth.summary).must_be_instance_of String
  end

  it "will raise an error if mass_kg is less than 0" do

    #Arrange
    Planet.new("earth", "blue-green",-5,2,"I live on it")

    #Assert
    expect {
      Planet.new("earth", "blue-green",-5,2,"I live on it")
    }.must_raise ArgumentError
  end

end