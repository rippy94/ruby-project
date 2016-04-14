class Timer
	attr_accessor(:seconds, :minutes, :hours)

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0

	end

	def time_string
		@minutes = @seconds/60
		@hours = @minutes/60
		result = ""
		@hours < 10 ? result << "0"+@hours.to_s + ":" : result << @hours.to_s + ":"
		@minutes = @minutes - (@hours*60)
		@minutes < 10 ? result << "0"+@minutes.to_s + ":" : result << @minutes.to_s + ":"
		@seconds = seconds - ((@hours*60+@minutes)*60)
		@seconds < 10 ? result << "0"+@seconds.to_s : result << @seconds.to_s
		result
	end

end