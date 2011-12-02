require 'solvers/colorpattern'

class TextCaptcha

    def solve(question)
        
    answer = nil

    answer = ColorPattern.new.solve(question) if answer == nil
    answer = NamePattern.solve(question) if answer == nil
    answer = BodyPartsPattern.solve(question) if answer == nil
    answer = DigitPattern.solve(question) if answer == nil
    answer = AddSubtractPattern.solve(question) if answer == nil
    answer = WhichNumberPattern.solve(question) if answer == nil
    answer = WordsToNumberPattern.solve(question) if answer == nil
    answer = DayPattern.solve(question) if answer == nil

    answer
    end

end

