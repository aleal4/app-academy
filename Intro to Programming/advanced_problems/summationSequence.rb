# A number's summation is the sum of all positive numbers less than or equal to the number. For example: the summation of 3 is 6 because 1 + 2 + 3 = 6, the summation of 6 is 21 because 1 + 2 + 3 + 4 + 5 + 6 = 21. Write a method summation_sequence that takes in a two numbers: start and length. The method should return an array containing length total elements. The first number of the sequence should be the start number. At any point, to generate the next element of the sequence we take the summation of the previous element. You can assume that length is not zero.

def summation(num) 
  sum  = 0

  (1..num).each do |i|
    sum += i
  end
  return sum
end

def summation_sequence(start, length)
  sequence = [start]

  while sequence.length < length
    prev = sequence[-1]
    sequence << summation(prev)
  end

  return sequence
end


print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]