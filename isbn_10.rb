def isbn_length(isbn_num)
	
	if isbn_num.length == 10
		true
	elsif isbn_num.length == 13
		true
	else 
		false
	end
end