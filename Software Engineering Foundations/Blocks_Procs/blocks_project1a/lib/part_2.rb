def all_words_capitalized?(array)
  array.all?{|word| word.capitalize == word }
end

def no_valid_url?(urls)
  valid_endings = ['.com', '.net', '.io', '.org']

  urls.none? do |url| 
    valid_endings.any?{|ending| url.end_with?(ending)}
  end
end

def any_passing_students?(array)
  array.any? do |student| 
    grades = student[:grades]
    avg = grades.sum / (grades.length * 1.0)
    avg >=75
  end 
end