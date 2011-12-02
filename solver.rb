$LOAD_PATH << './lib'
require 'textcaptcha'


solver = TextCaptcha.new
puts solver.solve("What is Susan's name?")
