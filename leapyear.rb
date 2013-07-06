class Year
	def leap(year)
		if (year % 4) == 0 && (year % 100) != 0 && (year % 400) != 0
			puts "It is a leap year!"
		else
			puts "It is NOT a leap year!"
		end
	end
end
