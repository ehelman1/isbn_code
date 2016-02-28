require "minitest/autorun"
require_relative "isbn_10.rb"

class TestIsbn < Minitest:: Test 

	def test_string_is_valid_amount_of_digits
		assert_equal(true, isbn_length("9780470059029"))
		assert_equal(true, isbn_length("0321146530"))
		assert_equal(false, isbn_length("478047005902"))
	end
	
	def test_remove_dashs_and_spaces
		assert_equal("9780470059029",isbn_dash_space("9-78047-0059-0-29"))
		assert_equal("9780470059029", isbn_dash_space("9 78047 0059 0 29"))
	
	end
		











end