# coding: utf-8

# TODO ! マジックコメントはRailsとかでも必要なのか調べる

## メソッドの宣言 -----------------------------------
# def メソッド名(仮引数)...end
# メソッド名(実引数...) do |変数名| ...end
def hello(names)
  names.each do |name|
    # puts 'Hello, #{name.upcase}'   # 'だと変数が展開されない
    puts "Hello, #{name.upcase}"     # #{}で指揮を埋め込める
  end
end

rubies = ['MRI', 'jruby', 'rubinius']

hello rubies


## メソッドの戻り値 -----------------------------------
## メソッドの戻り値は最後に評価された式の値
## 途中で終了したいときはreturn使う
def add(a, b)
  a + b
end

print add(1, 1)       # => 2



## スコープ -----------------------------------
foo = 'foo in toplevel'

def display_foo
#  puts foo         # TopレベルにはアクセスできないのでNameError が発生
end

puts foo
display_foo


greeting = "Hello, "
people = ['Alice', 'Bob']

people.each do |person|
  puts greeting + person
end


## 定数 -----------------------------------
# CAMEL_CASEで定義する
# 再代入しようとすると警告がでる（エラーにはならない）
# メソッドの中では定数を定義できない
CONST_VALUE = '定数'
CONST_VALUE = 'ほげ'

puts CONST_VALUE

