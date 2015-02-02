# coding: utf-8
# 仮引数の先頭に&をつけるとブロックを受け取れる(Procオブジェクトになる)
puts 'メソッドにブロックを渡す'
def block_sample(&block)
  puts 'stand up'

  puts "[#{block.class}]"
  block.call if block

  puts 'sit down'
end

block_sample do
  puts 'walk'
end # => 'stand up' 'walk' 'sit down'

puts
puts "オブジェクトをブロックとして渡す"
# オブジェクトをブロックとして渡す
people = %w[Alice Bob Charlie]
block = Proc.new { |name| puts name }
people.each &block

puts
puts 'シンボルに対してto_proc'
p1 = Proc.new {|val| val.upcase}
p2 = :upcase.to_proc    #p1と同義

puts p1.call('hi')
puts p2.call('hi')

puts
puts 'Array#map'
people = %w(Alice Bob Carol)
people.map {|person| person.downcase} # => ["alice", "bob", "carol"]

puts
puts "上記をSymbol#to_procで表現 (Symboleに&をつけるとto_procが呼び出される)"
people.map(&:downcase) # => ["alice", "bob", "carol"]
