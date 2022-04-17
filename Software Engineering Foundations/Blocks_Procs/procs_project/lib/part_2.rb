def reverser(string, &prc)
  # reverse string first, then give it into the block
  prc.call(string.reverse)  
end

def word_changer(string, &prc)
  words = string.split(' ')
  new_words = []

  words.each do |word|
    new_words << prc.call(word)
  end

  new_words.join(' ')
end