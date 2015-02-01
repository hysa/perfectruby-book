# coding: utf-8
pattern = /[0-9+]/

# 正規表現のパターンマッチは===, =~を使う

puts pattern === 'number1'

puts pattern =~ 'HAL 9000'

# 式展開
numbers = '[0-9+]'
puts /#{numbers}/ === 'number1'
puts /#{numbers}/ =~ 'HAL 9000'

# %記法だとスラッシュのエスケープがいらなくなる
%r(/usr/bin)

pwd = Dir.pwd
puts %r(#{pwd}/.+)


