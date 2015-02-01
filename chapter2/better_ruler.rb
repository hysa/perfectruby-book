class BetterRuler
  attr_accessor :length # アクセサメソッドを定義できる

  # クラス変数
  # インスタンスメソッド、クラス・メソッドから参照できる
  @@default_length = 10

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

  def self.default_length
    @@default_length
  end
end

ruler = BetterRuler.new(30)
ruler.display_length

BetterRuler.pair(50) # [#<BetterRuler:0x007ff1f3848388>, #<BetterRuler:0x007ff1f3848360>]

BetterRuler.default_length # => 10
