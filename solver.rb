require 'textcaptcha'

solver = TextCaptcha.new
puts solver.solve("Of the numbers one hundred, eighty one, sixty one, 99, 51 or forty seven, which is the smallest?")
puts solver.solve("If a person is called Robert, what is their name?")
puts solver.solve("Pink, green, yellow, ant and finger: the 2nd colour is?")
puts solver.solve("T-shirt, elbow, leg, milk and mosquito: how many body parts in the list?")
puts solver.solve("What is six thousand one hundred and eighty seven as digits?")
