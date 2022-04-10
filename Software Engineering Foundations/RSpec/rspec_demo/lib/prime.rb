def prime?(num) 
  (2...num).each do |i|
    if num % i == 0
      return false
    end
  end

  true
end