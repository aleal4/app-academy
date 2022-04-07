# Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
  counts = {}
  words = sentence.split
  words.each { |word| counts[word] = vowel_count(word) }
  
  sorted = counts.sort_by { |key, value| value}
  return sorted[-1][0]
  
end

def vowel_count(word)
  count = 0
  vowel = 'aeiou'

  word.each_char do |char|
    if vowel.include?(char) 
    count += 1 
  end
end
return count
end

print most_vowels("what a wonderful life") #=> "wonderful"