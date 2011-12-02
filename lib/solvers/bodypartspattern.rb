class BodyPartsPattern
	
	def solve(question)
		answer = nil

		parts = ['hair', 'ankle', 'thumb', 'toe', 'eye', 'chin', 'head', 'chest', 'face', 'stomach',
         'hand', 'heart', 'arm', 'ear', 'nose', 'foot', 'knee', 'leg', 'elbow', 'finger', 'tongue',
         'tooth', 'brain']
         
         found = []

         tokens = question.gsub(/[^\w\d\s]/,"").downcase.split

         if tokens.include?("body")

         	for i in (0..tokens.size)

				if parts.include?(tokens[i])
                	found << tokens[i]
                end

         	end

         end

         if found.size == 1
         	if tokens.include?("parts")
         		answer = '1'
         	elsif
         		answer = found[0]
         	end
         elsif found.size > 1
         	answer = found.size
         else
         	answer = nil
         end

         answer

	end

end