require 'highline/import'

def areAllTrue(boolean_array)
	boolean_array.each do |x|
		if !x 
			return false
		end
	end
	return true
end

question_asked = [false, false, false, false, false, false, false, false, false, false]
random_number = 0

until areAllTrue(question_asked)

	random_number = rand(10)

	#0 
	if random_number == 0 && question_asked[0] == false
		mood = ask "\nHow are you feeling today? (good/bad)" do |x|
			x.validate = /^(good|bad)$/
		end
		question_asked[0] = true

	#1
	elsif random_number == 1 && question_asked[1] == false
		loves = ask "\nWhat do you love?"
		question_asked[1] = true

	#2
	elsif random_number == 2 && question_asked[2] == false
		age = ask "\nHow old are you?"
		question_asked[2] = true
	
	#3
	elsif random_number == 3 && question_asked[3] == false
		smart = ask "\nDo you consider yourself smart? (y/n)" do |x|
			x.validate = /^(y|n)$/
		end
		question_asked[3] = true

	#4
	elsif random_number == 4 && question_asked[4] == false
		michael = ask "\nDo you like Michael Jackson? (y/n)" do |x|
			x.validate = /^(y|n)$/
		end
		question_asked[4] = true

	#5
	elsif random_number == 5 && question_asked[5] == false
		introvert = ask "\nAre you an introvert or extrovert? (introvert/extrovert)" do |x|
			x.validate = /^(introvert|extrovert)$/
		end
		question_asked[5] = true

	#6
	elsif random_number == 6 && question_asked[6] == false
		color = ask "\nWhat is your favourite color?"
		question_asked[6] = true

	#7
	elsif random_number == 7 && question_asked[7] == false
		candy = ask "\nWhat is your favourite candy?"
		question_asked[7] = true

	#8
	elsif random_number == 8 && question_asked[8] == false
		wants_candy = ask "\nDo you want <%= color('candy', RED) %>? (y/n)" do |x|
			x.validate = /^(y|n)$/		
		end
		question_asked[8] = true

	#9
	elsif random_number == 9 && question_asked[9] == false
		happy = ask "\nDo you consider yourself a happy person? (y/n)" do |x|
			x.validate = /^(y|n)$/
		end
		question_asked[9] = true
	end
end

if happy == 'y'
	say "\nAccording to my analysis, you are someone who people seem to be attracted to as a result of your happy demeanor. Keep it up!"
else
	say "\nYou tend to be more serious that it may be perceived as not being a happy person. It is this same perception that gives you a straight-forward approach to life. Keep it up!"
end