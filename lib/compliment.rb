class EmergencyCompliment

	attr_accessor :messages, :images

	def initialize
		@messages = messages
		@images = images
	end
    
    def messages
		messages_arr = ["You are loved", "You are special", "You bring out the best in everyone you are around",
				"You are very talented", "You are beautiful"]
		rand_messages = messages_arr[rand(5)]
		end
    
    def images
		images_arr = ["http://www.michaelspornanimation.com/splog/wp-content/c/hf3.jpg",
			"http://cdn.mos.totalfilm.com/images/h/happy-feet-645-75.jpg",
			"http://www.desiredanimations.com/wp-content/uploads/2011/08/Happy-Feet.jpg",
			"http://cdn.sheknows.com/articles/2011/11/happyfeet2.jpg", 
			"http://fc00.deviantart.net/fs10/f/2006/325/a/d/Happy_Feet_by_kellu.png"]
		rand_images = images_arr[rand(5)]
		end
end 