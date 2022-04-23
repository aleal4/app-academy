def countdown(n)
  if n === 0
    p 'lift off'
    return 
  end

  p n
  countdown(n - 1)
end

countdown(10) 