require 'solvers/colorpattern'
require 'solvers/namepattern'
require 'solvers/bodypartspattern'
require 'solvers/digitpattern'
require 'solvers/addsubtractpattern'
require 'solvers/whichnumberpattern'
require 'solvers/wordstonumberpattern'



class TextCaptcha

    def solve(question)
        
    answer = nil

    answer = ColorPattern.new.solve(question) if answer == nil
    answer = NamePattern.new.solve(question) if answer == nil
    answer = BodyPartsPattern.new.solve(question) if answer == nil
    answer = DigitPattern.new.solve(question) if answer == nil
    answer = AddSubtractPattern.new.solve(question) if answer == nil
    answer = WhichNumberPattern.new.solve(question) if answer == nil
    answer = WordsToNumberPattern.new.solve(question) if answer == nil
    #answer = DayPattern.new.solve(question) if answer == nil

    answer
    end

end

