# coding: utf-8
# ブロック引数のデフォルト値
def default_argument_for_block
  3.times do
    yield
  end
end

default_argument_for_block do |val = 'Hi'|
  puts val
end

# ブロック引数として可変長引数を受け取る
def flexible_arguments_for_block
  yield 1, 2, 3
end

flexible_arguments_for_block do |*params|
  puts params.inspect
end

