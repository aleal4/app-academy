# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime(number)
  return false if number < 2
  (0..number).none? {|i| number % i == 0}
end

def largest_prime_factor(number)

end