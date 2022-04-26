def hipsterfy(word)
vowels = 'aeiou'

i = word.length - 1

while i >= 0
  if vowels.include?(word[i])
    return word[0...i] + word[i + 1..-1]
  end
  i -= 1
end
word

end

def vowel_counts(str)
  counts = Hash.new(0)
  vowels = 'aeiou'

  str.each_char do |char|
    if vowels.include?(char.downcase)
      counts[char.downcase] += 1
    end
  end

  counts

end