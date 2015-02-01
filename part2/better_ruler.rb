class BetterRuler
  attr_accessor :length # アクセサメソッドを定義できる

  # 初期化(コンストラクタ)
  def initialize(length)
    @length = length
  end

  def display_length
    puts self.length
    puts length    # これでもok
  end

  # クラスメソッドは self.foo と定義
  def self.pair(length)
    [BetterRuler.new(length), BetterRuler,new(length)]
  end
end

ruler = BetterRuler.new(30)
ruler.display_length

puts BetterRuler.pair(50) # [#<BetterRuler:0x007ff1f3848388>, #<BetterRuler:0x007ff1f3848360>]


