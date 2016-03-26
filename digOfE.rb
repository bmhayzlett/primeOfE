require "bigdecimal"
require "bigdecimal/math"

include BigMath

def primeOfE(num_digits,nth_prime)

  raise "number error!" if num_digits < 1 || num_digits > 15 || nth_prime < 1
  
  iterator = num_digits + 1
  first = -3 - num_digits
  last = -4
  n = 0

  while n < nth_prime
    test_num = E(iterator).to_s[first..last].to_i
    if isPrime?(test_num)
      n += 1
      return test_num if n == nth_prime
    end
    iterator += 1
  end

end

def isPrime?(num)
  return false if num % 2 == 0

  iterator = 3
  while iterator <= num / (iterator - 1)
    return false if num % iterator == 0
    iterator += 2
  end

  true

end
