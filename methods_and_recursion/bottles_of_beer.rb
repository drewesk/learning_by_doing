#!/usr/bin/env ruby

def plural(bottles, words)
  words += 's' if bottles != 1
  "#{bottles} #{words}"
end

def no_bottles_left
  puts 'No more bottles of beer on the wall, no more bottles of beer.'
  puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
end

def sing_verse(bottles)
  bottle_of_beer = "#{plural(bottles, 'bottle')} of beer"
  puts bottle_of_beer + ' on the wall, ' + bottle_of_beer + '.'
  print 'Take one down and pass it around, '
  print "#{plural(bottles - 1, 'bottle')} of beer on the wall."
  puts "\n\n"
  if bottles > 1
    sing_verse(bottles - 1)
  else
    no_bottles_left
  end
end

sing_verse(99)
# no rubocop offenses
