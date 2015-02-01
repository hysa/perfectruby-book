# coding: utf-8
platform =
    if /darwin/ =~ RUBY_PLATFORM
      'Mac'
    else
      'Others'
    end

puts platform


puts '0' if 3.zero?

stone = 'peridot'

case stone
  when /pearl/
    puts '6月'
  when /ruby/
    puts '7月'
  when /peridot|sardonyx/
    puts '8月'
  else
    puts 'others'
end

## when節を1行で書くには thenを使う
case stone
  when /pearl/ then puts '6月'
  when /ruby/ then puts '7月'
  when /peridot|sardonyx/ then puts '8月'
  else puts 'others'
end

## 式を渡さないのもok
case
  when /pearl/ === stone then puts '6月'
  when /ruby/ === stone then puts '7月'
  when /peridot|sardonyx/ === stone then puts '8月'
  else puts 'others'
end
