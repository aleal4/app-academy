str = 'mississippi river'
count = Hash.new(0)

str.each_char { |char| count[char] += 1 }

print count
outs
print count.sort_by{ |k, v| v }