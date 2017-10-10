#write your code here
def translate (message)
	string=""
	messages = message.split("")
	first_two = Array(messages[0] + messages[1]).join("").split("")
	
	if Array(messages[0]).any?{ |x| ["a","e","i", "o","u"].include?(x)}
		messages << "ay"
		messages.join("")

	elsif first_two.any?{ |x| ["a","e","i", "o","u"].exclude?(x) && next}
		for i in 0..messages.length
			string += messages[i+2]
		end 
		string << "ay"
		string

	else
		for i in 0..messages.length
			string += messages[i+1]
		end 
		string << "ay"
		string 
	end 
end 