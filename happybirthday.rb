birthday = Hash.new


loop do
	puts "\nWhen is your birthday? \n\n"

	print "Year: "
	birthday[:year] = gets.chomp do |x|
		x.validate = /^(Integer)$/
	end

	birthday[:year] = birthday[:year].to_i

	print "Month (number): "
	birthday[:month] = gets.chomp
	birthday[:month] = birthday[:month].to_i

	print "Day: "
	birthday[:day] = gets.chomp
	birthday[:day] = birthday[:day].to_i

	time = Time.now

	age = time.year - birthday[:year]

	if time.month < birthday[:month]
		age -= 1
	elsif time.month == birthday[:month] && time.day < birthday[:day]
		age -= 1
	end

	puts "You are #{age} old."

	1.upto(age) do |x|
		print "Spank! "	
	end

	#Checks if user wants to go again
	puts "\n\nWould you like to enter a different date?(y/n)" 
	user_input = gets.chomp do |x|
		x.validate = /^(y|n)$/
	end

	if user_input == 'n'
		break
	end
end