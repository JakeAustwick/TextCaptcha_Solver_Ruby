class WordsToNumberPattern
	
	def solve(question)
		answer = nil

	    numbers =   {
                'zero' => 0,  'ten' => 10,     
                'one' => 1,   'eleven' => 11, 
                'two' => 2,   'twelve' => 12, 
                'three' => 3, 'thirteen' => 13, 
                'four' => 4,  'fourteen' => 14, 
                'five' => 5,  'fifteen' => 15, 
                'six' => 6,   'sixteen' => 16, 
                'seven' => 7, 'seventeen' => 17, 
                'eight' => 8, 'eighteen' => 18, 
                'nine' => 9,  'nineteen' => 19,
                
                'twenty' => 20, 'thirty' => 30, 'forty' => 40,
                'fifty' => 50, 'sixty' => 60, 'seventy' => 70, 
                'eighty' => 80, 'ninety' => 90
                }

		multipliers =   {
		    'thousand' => 1000, 'million' => 1000000, 'hundred' => 100
			}


		tokens = question.gsub(/[^\w\d\s]/,"").downcase.split
		if tokens.include?("digits") || tokens.include?("number")
			nums = []

			for i in (0..tokens.size)
				if numbers.include?(tokens[i]) && !multipliers.include?(tokens[i+1]) && !multipliers.include?(tokens[i+2])
					nums << numbers[tokens[i]]

				elsif numbers.include?(tokens[i]) && !multipliers.include?(tokens[i+1]) && multipliers.include?(tokens[i+2])
					temp = numbers[tokens[i]] + numbers[tokens[i+1]]
					temp = temp * multipliers[tokens[i+2]]
					tokens[i+1] = ""
					nums << temp
				elsif numbers.include?(tokens[i]) && multipliers.include?(tokens[i+1])
					nums << (numbers[tokens[i]] * multipliers[tokens[i+1]])
				end
			end
			answer = nums.inject(:+)
		end
		answer
	end

end