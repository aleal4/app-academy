def reverser(str, &prc)
  prc.call(str.reverse)
end

def word_changer(str, &prc)
  words = str.split(' ')
  new_words = []

  words.each {|word| new_words << prc.call(word) }

  new_words.join(' ')
end