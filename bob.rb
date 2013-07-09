loop do
	print "\nMe: "
	user_input = gets.chomp
	user_array = user_input.split(" ")
	user_input.delete! " "
	bob_response = ""
	user_input.downcase!
	
	if user_input[0] == 'b' && user_input[1] == 'r' && user_input[2] == 'o' && user_input[3] == ','
	  user_array.each do |x| 
	    x.gsub!('o', '0')
	    x.gsub!('i', '1')
	    x.gsub!('e', '3')
	    x.gsub!('a', '4')
	    bob_response += x + " "
	  end
	  0.upto(bob_response.length - 2) do |i|
	  	if bob_response[i] == bob_response[i].downcase && bob_response[i] != " " && bob_response[i] != '0' && bob_response[i] != '1' && bob_response[i] != '3' && bob_response[i] != '4'
	  		bob_response[i+1] = bob_response[i+1].upcase
	    end
	  end
	elsif user_input.include? "?"
	  bob_response = "Bob: Sure."
	elsif user_input.downcase == "bob"
	  bob_response = "Bob: Fine. Be that way!"
	elsif user_input == user_input.upcase || (user_input.include? "!")
	  bob_response = "Bob: Whoa, chill out!"
	elsif user_input == "exit"
	  break
	else
	  bob_response = "Bob: Whatever."
	end

	puts bob_response

end