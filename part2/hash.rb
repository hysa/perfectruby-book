# coding: utf-8
# hashの定義
colors = {
    :red => 'f00',
    :green => '0f0',
    :blue => '00f'
}
puts colors[:red]
puts colors[:white]

# Ruby 1.9以降は => 使わないで大丈夫
# TODO ! red と : が離れるとエラーになるので注意!!
colors19 = {
    red: 'f00',
    green: '0f0',
    blue: '00f'
}

puts numbers[:one]
