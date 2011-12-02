$LOAD_PATH << './lib'
require 'textcaptcha'


solver = TextCaptcha.new
puts solver.solve("The pink church is what colour?")
