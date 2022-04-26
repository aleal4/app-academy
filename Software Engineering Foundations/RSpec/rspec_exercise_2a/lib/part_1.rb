def partition(arr, n)
  less = []
  greater = []

  arr.each do |ele|
    if ele < n
      less << ele
    elsif ele >= n
      greater << ele
    end
  end

  [less, greater]
end

def merge(hash_1, hash_2)
  new_hash = {}

  hash_1.each {|key, value| new_hash[key] = value }
  hash_2.each {|key, value| new_hash[key] = value }

  new_hash
end

def censor(sentence, arr)
  words = sentence.split(' ')

  new_words = words.map do |word|
    if arr.include?(word.downcase) 
      star_vowels(word)
    else
      word
    end
  end

  new_words.join(' ')
end

def star_vowels(word)
  vowels = 'aeiou'
  new_str = ''

  word.each_char do |char|
    if vowels.include?(char.downcase)
      new_str += '*'
    else
      new_str += char
    end
  end
  new_str
end

