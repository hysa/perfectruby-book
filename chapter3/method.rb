# coding: utf-8
# メソッドの戻り値は最後に評価された値 ------------------
def greet(name)
  return false unless name

  "Hi, #{name.capitalize}"
end

puts greet('alice') # => "Hi, Alice"
puts greet(nil)     # => false


# デフォルト引数 -----------------------------------
def greet2(name, message = 'Hi')
  "#{message}, #{name.capitalize}"
end
puts greet2('alice')
puts greet2('ruby', 'Hello')
puts greet2('Hi', nil)  # => nil だとデフォルト引数使われない


# 可変長引数 -----------------------------------
def greet3(name, *messages)
  messages.each { |message|
    puts "#{message}, #{name}"
  }
end

greet3 'Ruby', 'Hello', 'こんにちは'


# 配列を分解して渡す -----------------------------------
def greet4(name, message1, message2)
  puts "#{message1}, #{name}."
  puts "#{message2}, #{name}."
end

messages = %w(はろはろ はろー)
greet4 'Ruby', *messages
