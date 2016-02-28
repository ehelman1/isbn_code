def isbn_length(isbn_num)
	
	if isbn_num.length == 10
		true
	elsif isbn_num.length == 13
		true
	else 
		false
	end
end

def isbn_dash_space(isbn_number)
	
	if isbn_number.include?"-"
		isbn_number = isbn_number.delete"-"
	elsif isbn_number.include?" "
		isbn_number.delete!" "
	else 
		isbn_number
	end
isbn_number

end 

def valid_isbn_number(isbn_1)
	isbn_dash_space(isbn_1)
	isbn_length(isbn_1)
end
	
	
	
	
