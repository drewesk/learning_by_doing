#!/usr/bin/env ruby

# variables.
seconds_in_a_minute = 60
minutes_in_a_hour = 60
hours_in_a_day = 24
days_in_a_week = 7
days_in_a_year = 365.25
# my_age = 23.7
age_20 = 20
age_100 = 100
string_1 = "there are "
string_2 = "That means "

puts string_1 + seconds_in_a_minute.to_s + " seconds in a minute"
puts string_1 + minutes_in_a_hour.to_s + " minutes in an hour"
puts string_1 + hours_in_a_day.to_s + " hours in a day"
puts string_1 + days_in_a_week.to_s + " days in a week"
puts string_2 + string_1.strip.to_s + ":"
puts " " + (seconds_in_a_minute * minutes_in_a_hour).to_s + " in an hour,"
puts " " + (seconds_in_a_minute * minutes_in_a_hour * hours_in_a_day).to_s + " seconds in a day,"
puts " " + (seconds_in_a_minute * minutes_in_a_hour * hours_in_a_day * days_in_a_week).to_s + " seconds in a week"
puts string_2 + "when you turn 20, you've been alive for " +
  (seconds_in_a_minute * minutes_in_a_hour * hours_in_a_day * days_in_a_year * age_20).to_i.to_s + " seconds,"
puts "and if you make it to 100, you will have lived for " +
  (seconds_in_a_minute * minutes_in_a_hour * hours_in_a_day * days_in_a_year * age_100).to_i.to_s +
  " seconds. Make them count!"
