# coding: utf-8
def keywords(hash = {})
  defaults = {alice: 'ありす', bob: 'ぼぶ'} # デフォルト値のハッシュ
  hash = defaults.merge(hash)

  hash
end

puts keywords bob: 'ボブ' # => {:alice=>"ありす", :bob=>"ボブ"}
