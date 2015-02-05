class Parent
  PARENT = 'constant in parent'
  PARENT2 = 'constant2 in parent'

  def greet
    puts 'Hi'
  end
end

class Child < Parent    # Parentを継承
  PARENT2 = 'constant2 in child'  # 定数上書き
end

class GrandChild < Child
end

p Child.constants    # => [:PARENT2, :PARENT]   (定数も継承される)
p Child::PARENT      # => "constant in parent"

p GrandChild::PARENT2 # => "constant2 in child"  (一番近いスーパークラスの定数)
