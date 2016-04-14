def translate(word)
	word = word.split(" ")
	vowels="AEIOUaeiou"
	count = 0
	word.each do |i|
		place = 0
		if vowels.include? i[0]
			i << "ay"
			count = count + 1
		else
			i.each_char do |c|
				break if ((vowels.include?(c)) && (i[place-1].downcase != "q"))
				place = place + 1
			end
			word[count]=i[place..(i.size-1)] + i.slice(0,(place)) + "ay"
			count = count + 1
		end	
	end
	word.join(" ")

end