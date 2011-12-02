class NamePattern
	
	def solve(question)
		omit = ['What', 'If', 'The']
		answer = nil

		question = question.gsub(/'s/,"")
		tokens = question.gsub(/[^\w\d\s]/,"").split

		if tokens.include?("name")
			for i in (0..tokens.size)

				if !omit.include?(tokens[i]) && (tokens[i] == tokens[i].to_s.capitalize)
					answer = tokens[i].downcase
				end

			end
		end
		
		answer

	end

end