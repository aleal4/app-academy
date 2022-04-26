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

def caesar_cipher(message, n)
  alp = ('a'..'z').to_a
  new_message = ''

  message.each_char.with_index do |char, idx|
    if alp.include?(char)
    old_idx = alp.index(char)  
    new_indx = old_idx + n
    new_message += alp[new_indx % 26]
    else
      new_message += char
    end
  end
  new_message
end

