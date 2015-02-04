class Ruler
  attr_accessor :length

  ## インスタンスメソッド
  class << self
    def pair
      [new, new]
    end

    def trio
      [new, new, new]
    end
  end
end

p Ruler.pair
p Ruler.trio
