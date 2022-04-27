def my_map(array, &prc)
  new_arr = []
  array.each {|ele| new_arr << prc.call(ele)}
  new_arr
end