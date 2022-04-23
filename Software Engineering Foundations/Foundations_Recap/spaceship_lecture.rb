def compare(a, b)
  if (a <=> b) == -1
    p 'a is less than be'
  elsif (a <=> b) == 1
    p 'a is greater than b'
  else
    p 'a is eq to b'
  end
end

compare(-3, 10)
compare(-4.5, -5)
compare(12, 12)