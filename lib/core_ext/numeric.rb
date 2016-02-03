class Numeric
  def prime_number?
    (2...self).none?{ |n| (self / n) % 1 == 0 }
  end
end