def my_map(array, &prc)
  mapped = []

  array.each do |ele| 
    mapped << prc.call(ele)
  end

  mapped
end

def my_select(array, &prc)
  selected = []

  array.each do |ele|
    if prc.call(ele) 
      selected << ele
    end
  end

    selected
end

def my_count(array, &prc)
  count = 0

  array.each do |ele|
    if prc.call(ele)
      count += 1
    end
  end
    count
end