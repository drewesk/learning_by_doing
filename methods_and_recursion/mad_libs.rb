#!/usr/bin/env ruby

def ask_question(madlibs_word)
  puts "Give me #{madlibs_word}"
  gets.chomp
end

adjective1 = ask_question('an adjective:')
adjective2 = ask_question('another adjective:')
noun1 = ask_question('a noun:')
noun2 = ask_question('another noun:')
plural_noun1 = ask_question('a plural noun:')
game = ask_question('a game:')
plural_noun2 = ask_question('another plural noun:')
verb_ing1 = ask_question('a verb ending in "ing":')
verb_ing2 = ask_question('another verb ending in "ing":')
plural_noun3 = ask_question('another plural noun:')
verb_ing3 = ask_question('another verb ending in "ing":')
noun3 = ask_question('one last noun:')
plant = ask_question('a plant:')
body_part = ask_question('a body part:')
place = ask_question('a place:')
verb_ing4 = ask_question('one last verb ending in "ing":')
adjective3 = ask_question('one last adjective:')
number = ask_question('a number:')
plural_noun4 = ask_question('one last plural noun:')

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

# no offenses in rubo-cop
