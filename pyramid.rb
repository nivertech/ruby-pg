#!/usr/bin/ruby

print "Enter a string: "
str = gets.chomp
str.length.downto(1) {|i| puts str[0,i] }
2.upto(str.length)   {|i| puts str[0,i] }
