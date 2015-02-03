# coding: utf-8
class Ruler
  def initialize(length)
    @length = length
  end

  def to_s
    '=' * @length
  end

  def inspect
    "Ruler(length: #{@length})"
  end
end

ruler = Ruler.new(5)

puts ruler # to_sが呼び出される
p ruler # inspectが呼び出される
