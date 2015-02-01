# coding: utf-8

# 数値のRange
puts (1..5).include? 5 # => true
puts (1...5).include? 5 # => false

# 日付のRange
require 'date'
vacation = Date.today..(Date.today + 1)
puts vacation.begin
puts vacation.end

# Rangeのループ(整数、文字で使える)
abc = 'a'..'c'
abc.each do |c|
  puts c
end
