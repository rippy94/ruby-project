class Book
	require "simon_says"
	attr_accessor :title

	def title
		@title = titleize(@title)
	end

end