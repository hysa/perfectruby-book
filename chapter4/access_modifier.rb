class AccessModifier
  def public_method
    protected_method
  end

  # Javaのprotectedとは違う。ほとんど必要ない。
  def protected_method
    private_method
  end
  protected :protected_method

  def private_method
    puts 'Done'
  end
  private :private_method
end

modifier = AccessModifier.new
modifier.public_method
modifier.protected_methods
modifier.private_methods