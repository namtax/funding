class Float
  def prime_number?
    (2...self).all?{ |n| (self / n) % 1 != 0 }
  end
end