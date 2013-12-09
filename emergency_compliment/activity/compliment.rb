class Compliment
	attr_accessor :message, :image

	def initialize
		@message = message_random
		@image = image_random
	end

	def message_random
		message_arr = [
		"'Why fit in when you were born to stand out?' ― Dr. Seuss",
		"'It's not easy being drunk all the time.  Everyone would do it, if it were easy.' - Tyrion Lannistar",
		"'Even miracles take a little time' - Cinderella's Fairy Godmother",
		"'Sucking at something is the first step to becoming good at something.' - Internet Dog MEME",
		"'It's not the beard on the outside that counts, it's the beard on the inside.' - Dexter's Laboratory ",
		"'All life's answers are on TV.' - Homer Simpson"
		]
		message_return = message_arr[rand(6)]
	end

	def image_random
		image_arr = ["blake"
			"http://community.sephora.com/t5/image/serverpage/imageid/23915i78B7085006C4239D/image-size/original?v=mpbl-1&px=-1", 
			"http://images.fineartamerica.com/images-medium-large-5/ethiopean-mother-and-child-nancy-watson.jpg", 
			"http://autolimosales.com/images/Old%20Antique%20Cars%20for%20Sale.jpg",
			"http://st.houzz.com/simgs/5521503b0ee90f57_4-5007/contemporary-artwork.jpg", 
			"http://www.thehouseofmarley.com/blog/wp-content/uploads/2012/11/bob-marley-artwork-4.jpg",
			"http://www.aivault.com/wp-content/uploads/2008/02/artwork1.jpg"
		]
		image_return = image_arr[rand(6)]
	end

end
