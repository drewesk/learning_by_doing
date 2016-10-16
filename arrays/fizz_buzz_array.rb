#!/usr/bin/env ruby

numbers = (1..100).to_a
fizz_numbers = numbers.map do |fizz_buzz_number|
  if (fizz_buzz_number % 3).zero? && (fizz_buzz_number % 5).zero?
    'FizzBuzz'
  elsif (fizz_buzz_number % 5).zero?
    'Buzz'
  elsif (fizz_buzz_number % 3).zero?
    'Fizz'
  else
    fizz_buzz_number
  end
end
puts fizz_numbers

# no offenses in rubocop
