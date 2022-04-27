def select_even_nums(array)
  array.select(&:even?)
end

def reject_puppies(array)
  array.reject{|puppies| puppies['age'] <= 2}
end

def count_positive_subarrays(array)
  array.count {|arr| arr.sum > 0 }
end