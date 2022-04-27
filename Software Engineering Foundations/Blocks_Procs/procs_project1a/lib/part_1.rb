def my_map(array, &prc)
  new_arr = []
  array.each {|ele| new_arr << prc.call(ele)}
  new_arr
end

def my_select(array, &prc)
  new_arr = []

  array.each do |ele| 
    if prc.call(ele)
      new_arr << ele
    end
  end
  new_arr
end

def my_count(array, &prc)
  count = 0

  array.each do |ele|
    count += 1 if prc.call(ele)
  end
  count
end