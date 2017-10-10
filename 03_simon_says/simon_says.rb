#write your code here

def echo (message)
	"#{message}"
end

def shout (message)
	"#{message}".upcase
end

def repeat(word, i=2)
  word + (" #{word}" * (i-1))   
end 

def start_of_word(expression, number = 1)
  expression[0, number]
end

def first_word(expression)
  expression_array = expression.split(" ")
  expression_array[0]
end

def titleize(expression)
  expression[0] = expression[0].upcase
  small_words = %w[a aboard about above across after against along amid among an and anti around as at before behind below beneath beside besides between beyond but by concerning considering despite down during except excepting excluding following for from in inside into like minus near nor of off on onto opposite or outside over past per plus regarding round save since than the through to toward towards under underneath unlike until up upon versus via with within without]
  expression_array = expression.split(" ")
  if expression_array.length > 1
  	expression_array.each do |expression|
  	  if small_words.include?(expression)
  	    expression
  	   else 
  	  	expression[0] = expression[0].upcase
  	  end
  	end
  end
  expression = expression_array.join(" ")
end
