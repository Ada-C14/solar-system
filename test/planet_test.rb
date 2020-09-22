require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'
require 'minitest/pride'

# require_relative '../lib/main'
require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

