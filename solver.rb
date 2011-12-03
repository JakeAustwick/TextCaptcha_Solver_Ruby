$LOAD_PATH << './lib'
require 'textcaptcha'


solver = TextCaptcha.new
puts solver.solve("What is the 1st number in the list nineteen, 23, twenty nine?")