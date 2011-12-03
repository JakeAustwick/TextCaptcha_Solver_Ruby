class WhichNumberPattern
	
	def solve(question)
		answer = nil

		single_numbers =   {
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
                'hundred' => 100
            }

		split_numbers = {
		                    'twenty' => 20, 'thirty' => 30, 'forty' => 40,
		                    'fifty' => 50, 'sixty' => 60, 'seventy' => 70, 
		                    'eighty' => 80, 'ninety' => 90
		}
		ordinals =  {
		                '1st' => 1, 'first' => 1,
		                '2nd' => 2, 'second' => 2,
		                '3rd' => 3, 'third' => 3,
		                '4th' => 4, 'fourth' => 4,
		                '5th' => 5, 'fifth' => 5,
		                '6th' => 6, 'sixth' => 6,
		                '7th' => 7, 'seventh' => 7,
		                '8th' => 8, 'eighth' => 8,
		                '9th' => 9, 'ninth' => 9,
		                '10th' => 10, 'tenth' => 10
		}

		tokens = question.gsub(/[^\w\d\s]/," # ").downcase.split.delete_if{ |t| t == ""}
		found = []
		which = -1

		if tokens.include?("number") || tokens.include?("largest") || tokens.include?("biggest") || tokens.include?("highest") || tokens.include?("smallest") || tokens.include?("lowest")
			for i in (0..tokens.size)

				if ordinals.include?(tokens[i])
					which = ordinals[tokens[i]]
				elsif is_integer?(tokens[i])
					found << tokens[i].to_i
				elsif single_numbers.include?(tokens[i])
					if single_numbers[tokens[i]] == 100 && i != 0 && single_numbers.include?(tokens[i - 1])
						found << (single_numbers[tokens[i-1]] * 100)
					else
						found << (single_numbers[tokens[i]])
					end
				elsif split_numbers.include?(tokens[i])
					if ((i+1) != tokens.size) && single_numbers.include?(tokens[i+1])
						found << (split_numbers[tokens[i]] + single_numbers[tokens[i + 1]])
						tokens[i + 1] = nil
					else
						found << (split_numbers[tokens[i]])
					end

				end

			end

			if which == -1
				if tokens.include?("largest") || tokens.include?("biggest") || tokens.include?("highest")
					answer = found.max
				elsif tokens.include?("smallest") || tokens.include?("lowest")
					answer = found.min
				end
			else
				answer = found[which - 1]
			end
		end
		answer
	    
	end

	def is_integer?(int)
    int.to_i.to_s == int
  end

end