# coding: utf-8
class MyObject
end

class OverloadMyObject
  def ==(other)
    # 同じクラスのオブジェクトであれば必ずtrueを返す
    self.class == other.class
  end
end

puts MyObject.new == MyObject.new # => false
puts OverloadMyObject.new == OverloadMyObject.new # => true
