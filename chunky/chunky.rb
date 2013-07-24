class Chunky
	
	#initialize the number and empty array
	def initialize(number)
		@user_inputted_number = number
		@chunks = []
	end		

	def number_to_delimited(number)
      parts = number.to_s
      parts = number.split(/(\d)(?=(\d\d\d)+(?!\d))/)
      return parts
    end

    def check(number)
		if number.to_i < 0 && number.to_i > 999999999999
			@string_array = ["error"]
		end
	end

	#have to split it up by thousands
	def number_split
		check(@user_inputted_number)
		if @string_array == ["error"]
			return "Error! Please enter a number between 0 and 999,999,999,999!"
		else
			@chunks = number_to_delimited(@user_inputted_number)
		end
	end
end

loop do
  puts "\n\nPlease enter a number between 0 and 999,999,999,999:"
  user_input = gets.chomp
  if user_input == 'exit'
  	break
  else
    output = Chunky.new(user_input).number_split
    print output
  end
end