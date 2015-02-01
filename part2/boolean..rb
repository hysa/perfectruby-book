# coding: utf-8
def judge_number(n)
  if n.zero?
    puts 'ゼロ'
  elsif n.even?
    puts '偶数'
  elsif n.odd?
    puts '奇数'
  else
    puts 'それ以外'
  end
end

judge_number(2)
judge_number(3)
judge_number(0)
judge_number(-1)
judge_number(1.3) ## これはエラー
