def reverser(string, &prc)
  prc.call(string.reverse)  
end