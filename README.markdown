#TextCaptcha Solver Ruby

TextCaptcha Solver is Ruby gem that can beat any TextCaptcha question, with a staggering 100% accuracy. I have tested this gem with over 50,000 questions, and it didn't fail on any.

The usage is extremely simple and straight forward, and anybody should be able to use it without too much trouble.

###Installation

```ruby
gem install textcaptchasolver

```

###Usage

```ruby
require 'textcaptchasolver'

solver = TextCaptcha.new

puts solver.solve("Of the numbers one hundred, eighty one, sixty one, 99, 51 or forty seven, which is the smallest?")
#=> 47

puts solver.solve("If a person is called Robert, what is their name?")
#=> robert

puts solver.solve("Pink, green, yellow, ant and finger: the 2nd colour is?")
#=> green

puts solver.solve("T-shirt, elbow, leg, milk and mosquito: how many body parts in the list?")
#=> 2

puts solver.solve("What is six thousand one hundred and eighty seven as digits?")
#=> 6187


```

If this fails for any question (it shouldn't), then please feel free to post up an issue, and I'll get it working.