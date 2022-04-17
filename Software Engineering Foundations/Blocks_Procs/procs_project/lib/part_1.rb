def my_map(array, &prc)
  mapped = []

  array.each do |ele| 
    mapped << prc.call(ele)
  end

  mapped
end

def my_select(array, &prc)
  selected = []

  array.filter do |ele|
    if prc.call(ele) 
      selected << ele
    end
  end
    selected
end
