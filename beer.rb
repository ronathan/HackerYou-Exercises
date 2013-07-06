class Beer
	def song(counter)
		while counter > 0
			if counter == 2
				puts "#{counter} bottles of beer on the wall, #{counter} bottles of beer.\nTake one down and pass it around, #{counter-1} bottle of beer on the wall.\n\n"
			elsif counter == 1
				puts "#{counter} bottle of beer on the wall, #{counter} bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n\n"
			else 
				puts "#{counter} bottles of beer on the wall, #{(counter)} bottles of beer.\nTake one down and pass it around, #{(counter-1)} bottles of beer on the wall.\n\n"
			end
			counter = counter - 1
		end
		puts "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n\n"
		return self
	end
end

beer = Beer.new
bool = true

while bool
	puts "\nDo you want to sing a song?"
	sing_a_song = gets.to_s
	
	if sing_a_song.index('y') != nil || sing_a_song.index('Y') != nil
		bool = true
		puts "\nHow many beers do you have on your wall?"
		user_input = gets.to_i
		puts "\n"
		beer.song(user_input)

	else 
		for num in 1..100
			puts "\nThis is the song that NEVER ends. And it goes on and on my friend!\n"
			puts "Some people (insert rest note) started singing it not knowing what it was.\n"
			puts "And they'll continue singing it forever just because."
		end
			puts "\n\n That's what you get for not wanting to sing a song!"
			bool = false
	end
end

