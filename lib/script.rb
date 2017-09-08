#! usr/bin/env ruby
require_relative('anagram')
puts "Anagram Checker!"
puts "Enter first word or sentence"
input1 = gets.chomp
puts "Enter second word or sentence"
input2 = gets.chomp

user_strings = TwoStr.new(input1, input2)
puts user_strings.anagram
