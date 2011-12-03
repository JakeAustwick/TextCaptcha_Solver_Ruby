class ColorPattern
	
	def solve(question)

		ordinals =   {
                'zero' => 0,      'one' => 1,   'eleven' => 11, 
                'ten' => 10,      'two' => 2,   'twelve' => 12, 
                'twenty' => 20,   'three' => 3, 'thirteen' => 13, 
                'thirty' => 30,   'four' => 4,  'fourteen' => 14, 
                'forty' => 40,    'five' => 5,  'fifteen' => 15, 
                'fifty' => 50,    'six' => 6,   'sixteen' => 16, 
                'sixty' => 60,    'seven' => 7, 'seventeen' => 17, 
                'seventy' => 70,  'eight' => 8, 'eighteen' => 18, 
                'eighty' => 80,   'nine' => 9,  'nineteen' => 19, 
                'ninety' => 90, 
            }

	    answer = nil
	    tokens = question.gsub(/[\?,]/,"").downcase.split

	    operators = ["+", "plus", "add", "-", "minus", "subtract"]
	    operator = [nil,nil]

	   	for i in (0..tokens.size)
	   		if operators.include?(tokens[i])
	   			operator = [tokens[i],i]
	   			break
	   		end
	   	end
		
		tokens[operator[1] - 1] = ordinals[tokens[operator[1] - 1]] if ordinals.include?(tokens[operator[1] - 1])
		tokens[operator[1] + 1] = ordinals[tokens[operator[1] + 1]] if ordinals.include?(tokens[operator[1] + 1])

	   	if operator[0] == "+" || operator[0] == "plus" || operator[0] == "add"

	   		answer = tokens[operator[1] - 1].to_i + tokens[operator[1] + 1].to_i

	   	elsif operator[0] == "-" || operator[0] == "minus" || operator[0] == "subtract"
	   		
	   		answer = tokens[operator[1] - 1].to_i - tokens[operator[1] + 1].to_i
	   	end

	   	answer
	end

end