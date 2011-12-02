require 'solvers/colorpattern'
require 'solvers/namepattern'
require 'solvers/bodypartspattern'
require 'solvers/digitpattern'


class TextCaptcha

    def solve(question)
        
    answer = nil

    answer = ColorPattern.new.solve(question) if answer == nil
    answer = NamePattern.new.solve(question) if answer == nil
    answer = BodyPartsPattern.new.solve(question) if answer == nil
    answer = DigitPattern.new.solve(question) if answer == nil
    answer = AddSubtractPattern.solve(question) if answer == nil
    answer = WhichNumberPattern.solve(question) if answer == nil
    answer = WordsToNumberPattern.solve(question) if answer == nil
    answer = DayPattern.solve(question) if answer == nil

    answer
    end

end

