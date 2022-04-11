def my_map(array, &prc)
  mapped = []

  array.each do |ele| 
    mapped << prc.call(ele)
  end

  mapped
end
