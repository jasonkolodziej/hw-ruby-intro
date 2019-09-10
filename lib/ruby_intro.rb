# When done, submit this entire file to the autograder.
# Provided with : https://ruby-doc.org/core-2.4.1/Array.html

# Part 1

def sum arr
  # use Symbol literal to add all values in array
  arr.inject(0, :+)
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr.pop
  else
    return arr.sort!.reverse!.take(2).inject(:+)
  end
end

def sum_to_n? arr, n
  return false if n == 0 and arr.length == 0
  arr.permutation(2).any? { |a, b| (a + b)== n }
end

# Part 2

def hello name
  # explicit return for ruby
  name = "Hello, " + name
end

def starts_with_consonant? s
  # make s lowercase to make checking easier
  s = s.downcase
  # look at the first char in string
  x = s.chr
  # make sure it's from the alphabet
  return false if /^[a-z]/i.match(x) == nil
  # is it empty, or vowel
  return false if ( x == "a" || x == "e" || x == "i" || x == "o" || x == "u" || s.empty? )
  return true
end

def binary_multiple_of_4? s
  return true if s == "0"
  #  any binary number that ends with 00
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock

  # this initializes getters & setters
  attr_accessor :isbn, :price

  # call with *.new
  def initialize isbn, price
    raise ArgumentError, "Invalid initilization parameters" if isbn.empty?  || price <= 0
    @isbn = isbn
    @price = price
  end

  # returns the price as a string --> $ ____ . _ _
  def price_as_string
    sprintf "$%.2f", @price
  end

end

