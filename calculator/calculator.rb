#pulls the num from the array
def pull_num(user_array)
	user_array.each do |x|
		if x.to_i != 0 
			return x.to_i
		end
	end
end

#finds position of operator string

#calculator
def calculate(user_array, total)
	user_array.each_index do |x|
		if user_array[x].downcase == "plus" || user_array[x] == "+"
			total = total + user_array[x+1].to_i
		elsif user_array[x].downcase == "minus" || user_array[x] == "-"
			total = total - user_array[x+1].to_i
		end
	end
	return total
end

loop do
	
	puts "Enter your calculation:"
	question = gets.chomp
	if question.downcase == 'exit'
		break
	end
	my_array = question.split(" ")
	result = pull_num(my_array)
	result = calculate(my_array, result)
	puts "= #{result}"


end
# elsif array[op_pos] == "times"
# elsif array[op_pos] == "divided"