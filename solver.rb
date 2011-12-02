$LOAD_PATH << './lib'
require 'textcaptcha'


solver = TextCaptcha.new
puts solver.solve("Ant, snake and eye: how many body parts in the list?")
