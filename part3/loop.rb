# coding: utf-8
languages = %w(Perl Python Ruby)
i = 0

# whileは他の言語と同じ漢字
puts 'while--------------'
while i < languages.length
  puts "Hello #{languages[i]}."
  i += 1
end

# untilはwhileの逆
puts 'until--------------'
i = languages.length - 1
until i < 0
  puts "Hello #{languages[i]}."
  i -= 1
end

# 式の後ろに記述できる
# sleep 1 while processing?
# sleep 1 until prepared?

# hashの走査
for val in {a: 1, b: 2}
  puts val[0]
  puts val[1]
end

# loopはブロックじゃないのでスコープを作らない
puts val


