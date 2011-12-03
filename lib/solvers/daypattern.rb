class DayPattern
	
	def solve(question)
		answer = nil

		days =  ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']

		tokens = question.gsub(/[^\w\d\s]/,"").downcase.split

		if tokens.include?("weekend")
			for i in (0..tokens.size)
				if tokens[i] == "saturday" || tokens[i] == "sunday"
					answer = tokens[i]
				end
			end

		elsif tokens.include?("today")
			offset = nil
			day = nil

			for i in (0..tokens.size)
				if tokens[i] == "yesterday"
					offset = 1
				elsif tokens[i] == "tomorrow"
					offset = -1
				elsif days.include?(tokens[i])
					day = tokens[i]
				end

			end
				answer = days[(days.index(day) + offset) % 7]
		end



		answer
	end

end