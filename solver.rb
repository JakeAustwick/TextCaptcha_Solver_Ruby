$LOAD_PATH << './lib'
require 'textcaptcha'


solver = TextCaptcha.new
puts solver.solve("Enter the number sixteen thousand two hundred and six in digits:")