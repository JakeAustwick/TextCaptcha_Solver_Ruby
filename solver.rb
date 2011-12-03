$LOAD_PATH << './lib'
require 'textcaptcha'


solver = TextCaptcha.new
puts solver.solve("What is sixty plus 1")
