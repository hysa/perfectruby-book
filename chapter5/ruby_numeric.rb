# coding: utf-8
p 0.zero?  # => true
p 3.zero?  # => false
p 0.nonzero? # => nil
p 3.nonzero? # => 3

# 数値のタイプ判定
p 1.integer?  # => true
p 1.5.integer? # => false
p 1.5.real? # => true
p Complex(1, 2).real? # => false

# スペース演算子 (ソートで用いられる)
p %w(Bob, Alice, Charlie).sort {|a, b|
  a.length <=> b.length  # 名前の長さ順
}

p %w(Bob, Alice, Charlie).sort {|a, b|
  a <=> b   # アルファベット順 (Numeric関係ないけど動作確認)
}

puts '[丸め操作]-----------------'
p 1.4.round   # => 1
p 1.5.round   # => 2
p -1.5.round  # => -2

p 1.4.ceil    # => 2
p -1.5.ceil   # => -1
p 1.5.floor   # => 1
p -1.4.floor  # => -2

puts '[繰り返し処理]-----------------'
3.step 5 do |num|
  puts num
end  # 3 4 5 と表示

1.2.step 3.0, 0.8  do |num|
  puts num
end  # 1.2, 2.0, 2.8

1.2.step 3.0 do |num|
  puts num
end  # 1.2, 2.2


