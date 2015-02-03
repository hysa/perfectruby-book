# coding: utf-8
# gets は標準入力から受け取る
print "足される数: "
a = Integer(gets)

print "足す数: "
b = Integer(gets)

puts "合計: #{a + b}"


# TODO ! エラーが発生する
# hysa@hysapc $ ruby chapter3/gets.rb 1 3                                                                              [~/dev/ruby/perfectruby-book]
# 足される数: chapter3/gets.rb:4:in `gets': No such file or directory @ rb_sysopen - 1 (Errno::ENOENT)
# 	from chapter3/gets.rb:4:in `gets'
# 	from chapter3/gets.rb:4:in `<main>'