require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'
require 'minitest/pride'

# Project file path goes here
require_relative '../lib//planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# Tests go here
