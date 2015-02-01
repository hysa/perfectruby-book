class Ruler

  def length=(val) # Setter
    @length = val
  end

  def length # Getter
    @length
  end
end

ruler = Ruler.new

ruler.length = 30  # Setterのシンタックスシュガー
print ruler.length       # => 30