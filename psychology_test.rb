require 'highline/import'

#initializing parameters
questions = [false, false, false, false, false, false, false, false, false, false]
all_questions = false
random_number = 0
follow_up = false
first_name = ""
last_name = ""
full_name = ""
go_again = ""
test_results = Hash.new

#method for checking if all values in the array are true
def areAllTrue(boolean_array)
	boolean_array.each do |x|
		if !x 
			return false
		end
	end
	return true
end

#method to reset all parameters back to initial value
# def resetParams(boolean_array, test, follow, first, last, full)
# 	boolean_array = [false, false, false, false, false, false, false, false, false, false]
# 	test = false
# 	follow = false
# 	first = ""
# 	last = ""
# 	full = ""
# 	say "I was accessed."
# end

#method to get full name
def getFullName
	first_name = ask "\nWhat is your first name?"
	first_name.delete! " "
	first_name.downcase!

	last_name = ask "\nWhat is your last name?"
	last_name.delete! " "
	last_name.downcase!

	full_name = first_name + "_" + last_name
end

#initializing a hash of hashes
def testResults(a_hash, name)
	a_hash[name] = Hash.new
	a_hash[name] = {
		mood: "good",
		loves: "Mother",
		age: "24",
		smart: "y",
		michael: "y",
		introvert: "extrovert",
		color: "green",
		candy: "skittles",
		wants_candy: "y",
		happy: "y"
	}
end

#test to check if storing properly
# test_results[full_name].each do |x,y|
# 	print x
# 	print y
# end

loop do 

	#method calls
	getFullName
	testResults(test_results, full_name)

	#Question loop calls method automatically
	while !all_questions

		all_questions = areAllTrue(questions)

		#generates random number between 0 and 9
		if follow_up == false
			random_number = rand(10)
		end

		#Question 0 
		if random_number == 0 && questions[0] == false
			test_results[full_name][:mood] = ask "\nHow are you feeling today? (good/bad)" do |x|
				x.validate = /^(good|bad)$/
			end
			questions[0] = true

		#Question 1
		elsif random_number == 1 && questions[1] == false
			test_results[full_name][:loves] = ask "\nWhat do you love?"
			questions[1] = true

		#Question 2
		elsif random_number == 2 && questions[2] == false
			test_results[full_name][:age] = ask "\nHow old are you?"
			questions[2] = true
		
		#Question 3
		elsif random_number == 3 && questions[3] == false
			test_results[full_name][:smart] = ask "\nDo you consider yourself smart? (y/n)" do |x|
				x.validate = /^(y|n)$/
			end
			questions[3] = true

		#Question 4
		elsif random_number == 4 && questions[4] == false
			test_results[full_name][:michael] = ask "\nDo you like Michael Jackson? (y/n)" do |x|
				x.validate = /^(y|n)$/
			end
			questions[4] = true

		#Question 5
		elsif random_number == 5 && questions[5] == false
			test_results[full_name][:introvert] = ask "\nAre you an introvert or extrovert? (i/e)" do |x|
				x.validate = /^(i|e)$/
			end
			questions[5] = true

		#Question 6
		elsif random_number == 6 && questions[6] == false
			test_results[full_name][:color] = ask "\nWhat is your favourite color?"
			questions[6] = true
			follow_up = false
			
			#leads to question 7 and allows you to go only if it is unanswered
			if questions[7] == false
				follow_up = true
				random_number = 7
			end

		#Question 7
		elsif random_number == 7 && questions[7] == false
			test_results[full_name][:candy] = ask "\nWhat is your favourite candy?"
			questions[7] = true
			follow_up = false

		#Question 8
		elsif random_number == 8 && questions[8] == false
			test_results[full_name][:wants_candy] = ask "\nDo you want <%= color('candy', RED) %>? (y/n)" do |x|
				x.validate = /^(y|n)$/		
			end
			questions[8] = true

			#leads to follow up
			if test_results[full_name][:wants_candy] == 'y' && questions[6] == false
				follow_up = true
				random_number = 6
			end

		#Question 9
		elsif random_number == 9 && questions[9] == false
			test_results[full_name][:happy] = ask "\nDo you consider yourself a happy person? (y/n)" do |x|
				x.validate = /^(y|n)$/
			end
			questions[9] = true
		end
	end

	#analysis of patient
	if test_results[full_name][:happy] == 'y'
		say "\nAccording to my analysis, you are someone who people seem to be attracted to as a result of your happy demeanor. Keep it up!"
	else
		say "\nYou tend to be more serious that it may be perceived as not being a happy person. It is this same perception that gives you a straight-forward approach to life. Keep it up!"
	end

	#loops to see if you want to continue testing
	go_again = ask "\nThank you for completing the test. \n\n\nWould you like to do another test? (y/n)" do |x|
		x.validate = /^(y|n)$/
	end

	if go_again == 'n'
		break
	else
		questions = [false, false, false, false, false, false, false, false, false, false]
		all_questions = false
		follow_up = false
		first_name = ""
		last_name = ""
		full_name = ""
	end
end

# test_results.each do |x, y|
# 	test_results[x]
# end