#!/usr/bin/env ruby

puts 'Ruby is my favorite.'
puts 'Ruby is my favorite.'.reverse
puts 'Ruby is my favorite.'.capitalize
puts 'ruby is my favorite.'.capitalize
puts 'Ruby is my favorite.'.downcase
puts 'Ruby is my favorite.'.upcase
puts 'Ruby is my favorite.'.length
puts 'Ruby is my favorite.'.gsub('my', 'your')
puts 'Ruby is my favorite.'.downcase.include?('ruby')

puts 'Ruby is my favorite.'.chop

seconds = 5
if seconds == 5
  puts 'It equals five!'
else
  puts 'It does not!'
end

input = ''
while input != 'bye'
  input = gets.chomp
  puts input
end
