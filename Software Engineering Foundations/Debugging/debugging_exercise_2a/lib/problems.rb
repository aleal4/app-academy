# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require 'byebug'

def prime(number)
  return false if number < 2
  (2...number).none? {|i| number % i == 0}
end

def largest_prime_factor(number)
  debugger
  number.downto(2) do |factor|
    if number % factor == 0 && prime(number)
      return factor
    end
  end
end