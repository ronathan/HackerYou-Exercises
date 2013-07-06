
counter = 1
print "\n\n"
while counter <= 100
	if (counter % 3 == 0) && (counter % 5 == 0)
		print "fizzbuzz "
	elsif counter % 3 == 0
		print "fizz "
	elsif counter % 5 == 0
		print "buzz "
	else 
		print "#{counter} "
	end
	counter = counter + 1
end

# counter = 1
# print "\n\n"
# while counter <= 100
# 	if counter / 3 != 0

# 		print "#{counter} "
# 	elsif counter % 3 == 0
# 		print "fizz "
# 		if counter % 5 == 0
# 			print "buzz "
# 		end
# 	end
# 	counter = counter + 1
# end
