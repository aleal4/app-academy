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

#factoral
def factorial(n)
  return 1 if n == 1
  n * factorial(n - 1)
end

factorial(5)