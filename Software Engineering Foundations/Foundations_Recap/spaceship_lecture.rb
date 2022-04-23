def compare(a, b)
  if (a <=> b) == -1
    p 'a is less than be'
  elsif (a <=> b) == 1
    p 'a is greater than b'
  else
    p 'a is eq to b'
  end
end

# compare(-3, 10)
# compare(-4.5, -5)
# compare(12, 12)

def bubble_sort(array, &prc)
  sorted = false
  while !sorted
    sorted = true

    (0...array.length - 1).each do |i|
      if prc.call(array[i] > array[i + 1]) == -1
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end
  array
end

p bubble_sort([6, 10, -5, 9, 0 , 8, 3, 2]) { |a, b| a <=> b }