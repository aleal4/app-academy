def countdown(n)
  #base case, stop the recursion
  if n == 0
    p 'lift off'
    return 
  end

  #recursive, call the same method again
  p n
  countdown(n - 1)
end

countdown(10) 