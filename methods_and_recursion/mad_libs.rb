#!/usr/bin/env ruby

def ask_question(madlib_word)
  print madlib_word.to_s
  puts ''
  gets.chomp
end

adjective1 = ask_question('Give me an adjective:   ')
adjective2 = ask_question('Give me another adjective:   ')
adjective3 = ask_question('Give me one last adjective:   ')
noun1 = ask_question('Give me a noun:   ')
noun2 = ask_question('Give me another noun:   ')
noun3 = ask_question('Give me one last noun:   ')
plural_noun1 = ask_question('Give me a plural noun:   ')
plural_noun2 = ask_question('Give me another plural noun:   ')
plural_noun3 = ask_question('Give me another plural noun:   ')
plural_noun4 = ask_question('Give me one last plural noun:   ')
verb_ing1 = ask_question('Give me a verb ending in "ing":   ')
verb_ing2 = ask_question('Give me another verb ending in "ing":   ')
verb_ing3 = ask_question('Give me another verb ending in "ing":   ')
verb_ing4 = ask_question('Give me one last verb ending in "ing":   ')
plant = ask_question('Give me a plant:   ')
body_part = ask_question('Give me a body part:   ')
place = ask_question('Give me a place:   ')
number = ask_question('Give me a number:   ')
game = ask_question('Give me a game:   ')

puts "A vacation is when you take a trip to some #{adjective1} place"
puts "with your #{adjective2} family. Usually you go to some place"
puts "that is near a/an #{noun1} or up on a/an #{noun2}."
puts "A good vacation place is one where you can ride #{plural_noun1}"
puts "or play #{game} or go hunting for #{plural_noun2}. I like"
puts "to spend my time #{verb_ing1} or #{verb_ing2}."
puts 'When parents go on a vacation, they spend their time eating'
puts "three #{plural_noun3} a day, and fathers play golf, and mothers"
puts "sit around #{verb_ing3}. Last summer, my little brother"
puts "fell in a/an #{noun3} and got poison #{plant} all"
puts "over his #{body_part}. My family is going to go to (the)"
puts "#{place}, and I will practice #{verb_ing4}. Parents"
puts 'need vacations more than kids because parents are always very'
puts "#{adjective3} and because they have to work #{number}"
puts "hours every day all year making enough #{plural_noun4} to pay"
puts 'for the vacation.'

# no offenses on rubo-cop
