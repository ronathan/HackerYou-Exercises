require_relative './say'
require 'minitest/autorun'
require 'minitest/pride'

class SayTest < Minitest::Unit::TestCase
	def test_zero
		assert_equal 'zero', Say.new("0").in_english
	end

	def test_fourteen
		assert_equal 'fourteen', Say.new("14").in_english
	end

	def test_fifty
		assert_equal 'fifty', Say.new("50").in_english
	end

	def test_ninety_eight
		assert_equal "ninety-eight", Say.new("98").in_english
	end

	def test_negative_one
		skip
		assert_equal "Error! Please enter a num between 0-99!", Say.new("-1").in_english
	end

	def test_one_hundred
		skip
		assert_equal "Error! Please enter a num between 0-99!", Say.new("100").in_english
	end
end