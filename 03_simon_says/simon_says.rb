def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(*input)
	n = 2
	n = input.pop if input.size > 1
	(n-1).times do
		input << input[0]
	end
	input.join(" ")
end

def start_of_word(word, n)
	word[0..(n-1)]
end

def first_word(word)
	word = word.split(" ")
	word[0]
end

def titleize(word)
	word = word.split(" ")
	word[0] = word[0].capitalize
	small_words = ["the","and","to","over"]
	word.each do |i|
		i.replace(i.capitalize) if !small_words.include?(i)
	end
	word.join(" ")
end