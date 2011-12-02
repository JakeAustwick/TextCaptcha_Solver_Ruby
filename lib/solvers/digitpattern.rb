class DigitPattern
	
	def solve(question)

     ordinals =  {
                   '1st' => 1, 'first' => 1,
                   '2nd' => 2, 'second' => 2,
                   '3rd' => 3, 'third' => 3,
                   '4th' => 4, 'fourth' => 4,
                   '5th' => 5, 'fifth' => 5,
                   '6th' => 6, 'sixth' => 6,
                   '7th' => 7, 'seventh' => 7,
                   '8th' => 8, 'eight' => 8,
                   '9th' => 9, 'ninth' => 9,
                   '10th' => 10, 'tenth' => 10
               }

		answer = nil

      tokens = question.gsub(/[^\w\d\s]/,"").downcase.split
      which = -1

      if tokens.include?("digit")
         for i in (0..tokens.size)

            if is_integer?(tokens[i])
               answer = tokens[i]
            elsif ordinals.include?(tokens[i])
               which = ordinals[tokens[i]]
            end
         end
         
         answer = answer[which - 1]

      end

      answer

	end

   def is_integer?(int)
    int.to_i.to_s == int
  end

end