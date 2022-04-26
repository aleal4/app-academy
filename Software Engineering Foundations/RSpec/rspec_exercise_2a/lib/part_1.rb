def partition(arr, n)
  less = []
  greater = []

  arr.each do |ele|
    if ele < n
      less << ele
    elsif ele >= n
      greater << ele
    end
  end

  [less, greater]
end

def merge(hash_1, hash_2)
  new_hash = {}

  hash_1.each {|key, value| new_hash[key] = value }
  hash_2.each {|key, value| new_hash[key] = value }

  new_hash
end