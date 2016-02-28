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
		
	def test_empty_string_false_for_valid_isbn_number
		assert_equal(false, valid_isbn_number(""))
	end
	
	def test_valid_13_digit_with_spaces_and_hypens_returns_true
		assert_equal("9780470059029", isbn_dash_space("97 8-047-00 590-29"))

	end
	
	def test_for_non_numerical_characters
		assert_equal(false, isbn_remove_non_numerical_characters("97A 8-24-635 879-2"))

	end



end