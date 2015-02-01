# coding: utf-8
# 手続きオブジェクト

greeter = Proc.new {|name|
  puts "Hello, #{name}!"
}

# callで実行。callの引数はブロックの仮引数に代入される
greeter.call 'proc'
greeter.call 'ruby'

# ------------------------------------
# Proc#callの戻り値は、ブロックの中で最後に評価された値
format = Proc.new {|name|
  name = name.capitalize

  "Hello, #{name}"
}

puts format.call 'proc'
puts format.call 'ruby'


# ------------------------------------
# 手続きオブジェクト生成方法いろいろ
by_proc = proc {|name| puts "Proc, #{name}!"}
by_lambda = lambda {|name| puts "Lambda, #{name}!"}
by_literal = ->(name) { puts "Literal, #{name}!"}

by_proc.call 'dog'
by_lambda.call 'dog'
by_literal.call 'dog'

