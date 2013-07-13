puts "Enter your calculation:"

question = gets.chomp

#splits string into an array
my_array = question.split(" ")

#empty array
result = 0

#pulls the num from the array
def pull_num(user_array, result)
	user_array.each_index do |x|
		if user_array[x].to_i != 0 
			if num_array.empty?
				num_array[0] = user_array[x].to_i
				index1 = x
			else
				num_array[1] = user_array[x].to_i
				index2 = x
			end
		end
	end
end

#finds position of operator string
def find_op(index1, index2)
	return index2 - index1 + 1
end

#calculator

def calculate(user_array, num_array, result)
	user_array.each_index do |x|
		if user_array[x] == "plus"
			result += num_array[x+1].to_i
		elsif user_array[x] == "minus"
			result -= num_array[x+1].to_i
		end
	end
end

pull_num(my_array, num, pos1, pos2)
op_pos = find_op(pos1, pos2)
result = calculate(my_array, num, op_pos)
print result

# elsif array[op_pos] == "times"
# elsif array[op_pos] == "divided"