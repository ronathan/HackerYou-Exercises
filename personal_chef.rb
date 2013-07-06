class PersonalChef
  def make_toast(color)
    puts "Making your toast #{color}!"
    return self
  end
  def make_milkshake
	puts "Making your milkshake!"
	return self
  end	
  def make_eggs(quantity)
  quantity.times do
    puts "Making an egg."
  end
  puts "I'm done!"
  return self
end
end

class Butler
	def open_front_door
		puts "Welcome sir!"
	end
end
