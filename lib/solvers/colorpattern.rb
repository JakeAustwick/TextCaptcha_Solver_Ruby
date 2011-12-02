class ColorPattern
	
	def solve(question)
	    colors = ['alizarin', 'almond', 'amaranth', 'amber', 'amber', 'amethyst', 'ao', 'ao', 'apricot', 'aqua', 'aquamarine', 'arsenic', 'asparagus', 'auburn', 'aureolin', 'aurometalsaurus', 'awesome', 'azure', 'azure', 'bazaar', 'beaver', 'beige', 'bistre', 'bittersweet', 'black', 'blond', 'blue', 'blue', 'blue', 'blush', 'bole', 'brass', 'bronze', 'brown', 'brown', 'bubbles', 'buff', 'burgundy', 'burlywood', 'byzantine', 'byzantium', 'cadet', 'camel', 'capri', 'cardinal', 'carmine', 'carnelian', 'ceil', 'celadon', 'cerise', 'cerulean', 'chamoisee', 'champagne', 'charcoal', 'chartreuse', 'chartreuse', 'chestnut', 'chocolate', 'cinereous', 'cinnabar', 'cinnamon', 'citrine', 'cobalt', 'copper', 'coquelicot', 'coral', 'cordovan', 'corn', 'cornsilk', 'cream', 'crimson', 'cyan', 'cyan', 'daffodil', 'dandelion', 'denim', 'desert', 'drab', 'ecru', 'eggplant', 'eggshell', 'emerald', 'fallow', 'fandango', 'fawn', 'feldgrau', 'firebrick', 'flame', 'flavescent', 'flax', 'folly', 'fuchsia', 'fulvous', 'gainsboro', 'gamboge', 'glaucous', 'gold', 'gold', 'goldenrod', 'gray', 'green', 'green', 'green', 'green', 'grullo', 'harlequin', 'heliotrope', 'honeydew', 'iceberg', 'icterine', 'inchworm', 'indigo', 'indigo', 'iris', 'isabelline', 'ivory', 'jade', 'jasper', 'jonquil', 'khaki', 'khaki', 'lava', 'lavender', 'lavender', 'lemon', 'lilac', 'lime', 'lime', 'linen', 'liver', 'lust', 'magenta', 'magenta', 'magenta', 'magnolia', 'mahogany', 'maize', 'malachite', 'manatee', 'maroon', 'maroon', 'mauve', 'mauvelous', 'melon', 'mint', 'moccasin', 'mulberry', 'mustard', 'myrtle', 'ochre', 'olive', 'olivine', 'onyx', 'orange', 'orange', 'orange', 'orchid', 'peach', 'pear', 'pearl', 'peridot', 'periwinkle', 'persimmon', 'pink', 'pistachio', 'platinum', 'plum', 'plum', 'prune', 'puce', 'pumpkin', 'purple', 'purple', 'raspberry', 'razzmatazz', 'red', 'red', 'red', 'redwood', 'regalia', 'rose', 'rosewood', 'ruby', 'ruddy', 'rufous', 'russet', 'rust', 'saffron', 'salmon', 'sand', 'sandstorm', 'sangria', 'sapphire', 'scarlet', 'seashell', 'sepia', 'shadow', 'sienna', 'silver', 'sinopia', 'skobeloff', 'smalt', 'snow', 'straw', 'sunglow', 'sunset', 'tan', 'tangelo', 'tangerine', 'taupe', 'teal', 'thistle', 'timberwolf', 'tomato', 'toolbox', 'tumbleweed', 'turquoise', 'ube', 'ultramarine', 'umber', 'urobilin', 'vanilla', 'verdigris', 'vermilion', 'veronica', 'violet', 'violet', 'violet', 'violet', 'viridian', 'wenge', 'wheat', 'white', 'wisteria', 'xanadu', 'yellow', 'yellow', 'yellow', 'zaffre']

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

		tokens = question.gsub(/[^\w\d\s]/,"").downcase.split
	    found = []
	    which = -1
	    answer = nil
	    
	    if tokens.include?('colour')
	        for i in (0..tokens.size)


	        if colors.include?(tokens[i])
	            found << tokens[i]
	        elsif ordinals.include?(tokens[i])
	            which = ordinals[tokens[i]]
	        end

	        if found.size == 1 || which == -1
	            answer = found[0]
	        else
	            answer = found[which -1]
	        end

	        end

	    elsif tokens.include?('colours')

	        for i in (0..tokens.size)

	            if colors.include?(tokens[i])
	                found << tokens[i]
	            end

	            answer = found.size
	        
	        end

	    end
	    answer
	end

end