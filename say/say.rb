class Say
	
	def initialize(number)
		@number = number.to_i
		@first_digit = nil
		@second_digit = nil
	end		

  	def in_english
	    check(@number)
	    if @number % 10 == 0 || @number <= 19
	    	puts "In English: #{@first_digit}\n"
	    	return "#{@first_digit}"
	    else
	    	puts "In English: #{@first_digit}-#{@second_digit}\n"
	    	return "#{@first_digit}-#{@second_digit}"
	    end
	end
		
	def check(num)
	    #checks nums
		if num <= 9
			@first_digit = zero_to_nine(num)
		elsif num >= 10 && num <= 19
			@first_digit = ten_to_nineteen(num)
	    elsif num >= 20 && num <= 29
	    	@first_digit = "twenty"
	        @second_digit = zero_to_nine(num % 10)     
  		elsif num >= 30 && num <= 39
  			@first_digit = "thirty"
  			@second_digit = zero_to_nine(num % 10)
		elsif num >= 40 && num <= 49
			@first_digit = "fourty"
  			@second_digit = zero_to_nine(num % 10)
	 	elsif num >= 50 && num <= 59
	 		@first_digit = "fifty"
  			@second_digit = zero_to_nine(num % 10)
	 	elsif num >= 60 && num <= 69
	 		@first_digit = "sixty"
  			@second_digit = zero_to_nine(num % 10)
	 	elsif num >= 70 && num <= 79
	 		@first_digit = "seventy"
  			@second_digit = zero_to_nine(num % 10)
	 	elsif num >= 80 && num <= 89
	 		@first_digit = "eighty"
  			@second_digit = zero_to_nine(num % 10)
	 	elsif num >= 90 && num <= 99
	 		@first_digit = "ninety"
  			@second_digit = zero_to_nine(num % 10)
	  	end
	end

  	def zero_to_nine(num)
  		case num
  			when 0 then return "zero"
  			when 1 then return "one"
  			when 2 then return "two"
  			when 3 then return "three"
  			when 4 then return "four"
  			when 5 then return "five"
  			when 6 then return "six"
  			when 7 then return "seven"
  			when 8 then return "eight"
  			when 9 then return "nine"
  		end
  	end

  	def ten_to_nineteen(num)
  		case num
  			when 10 then return "ten"
  			when 11 then return "eleven"
  			when 12 then return "twelve"
  			when 13 then return "thirteen"
  			when 14 then return "fourteen"
  			when 15 then return "fifteen"
  			when 16 then return "sixteen"
  			when 17 then return "seventeen"
  			when 18 then return "eighteen"
  			when 19 then return "nineteen"
  		end  		
  	end
end

loop do
	print "\nPlease enter a number: "
	user_input = gets.chomp
	if user_input.to_i >= 0 && user_input.to_i < 100 && /\D/.match(user_input) == nil
		Say.new(user_input).in_english
	elsif user_input == "exit"
		break
	else print "Error! Please enter a num between 0-99!\n "
	end
end