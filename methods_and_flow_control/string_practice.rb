#!/usr/bin/env ruby

string_practice = "this is a string to practice with"
practice = "practice "
the_string = "The string '"
length_of_characters = "' has 33 characters"
puts string_practice
puts string_practice.capitalize
puts string_practice.upcase
puts string_practice.gsub("string", "'string'").capitalize
puts the_string + string_practice + length_of_characters
puts string_practice.reverse
puts practice * 3
