require_relative './chunky'
require 'minitest/autorun'
require 'minitest/pride'

class ChunkyTest < Minitest::Unit::TestCase
	def test_zero
		assert_equal [0,0,0,0], Chunky.new(0).split		
	end

	def test_20
		assert_equal [0,0,0,20], Chunky.new(20).split
	end

	def test_1000634972
		assert_equal [1,0,634,972], Chunky.new(1000634972).split
	end

	def test_999999999999
		assert_equal [999,999,999,999], Chunky.new(999999999999).split
	end

	def test_negative_one
		assert_equal [nil], Chunky.new(-1).split
	end

	def test_1trillion
		assert_equal [nil], Chunky.new(1000000000000).split
	end
end