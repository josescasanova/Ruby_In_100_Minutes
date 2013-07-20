require 'date'
class PersonalChef
	def make_toast(color)
		if color.nil?
			puts "How am I supposed ot make nothingness toast?"
		else
		puts "Making your toast #{color}!"
		end
		return self
	end

	def make_eggs(quantity)
		quantity.times do 
		puts "Making an egg."	
		end
		puts "I'm done!"
		return self
	end

	def make_milkshake(flavor)
		puts "Making your #{flavor} milkshake!"
	end

	def good_morning
		today = Date.today.strftime("%A")
		day_of_year = Date.today.yday
		puts "Happy " + today + "! It is the " + day_of_year.to_s + " day of the year."
		return self
	end

	def gameplan(meals)
		meals.each do |meal|
			puts "Well have #{meal}.."
		end

		all_meals = meals.join(", ")
		puts "In summar: #{all_meals}"
	end

	def inventory
		produce = {apples: 3, oranges: 1, carrots: 12}
		produce.each do |item, quantity|
			puts "There are #{quantity} #{item} in the fridge."
		end
	end

	def water_status(minutes)
		if minutes < 7
			puts "The water is not boiling yet."
		elsif minutes == 7
			puts "Its just barely boiling"
		elsif minutes == 8
			outs "Its boiling"
		else
			puts "Hot hot!"
		end
		return self
	end

	def countdown(counter)
		until counter == 0
			puts "The counter is #{counter}"
			counter = counter - 1
		end
		return self
	end






end

class Butler
	def open_door(door)
		puts "Opening the #{door} door!"
	end
end
